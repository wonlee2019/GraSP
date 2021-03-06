%Defines and returns an all-pass graph filter.
%
%This file serves as a reference for the filter structure. These are
%filters that are independent from the graph structure. At the moment,
%two fields are required:
% - type: how is the filter defined?
%   - 'polynomial': polynomial of the fundamental matrix of the graph
%   - 'chebpoly': Chebyshev polynomial of the second kind of the
%                 fundamental matrix of the  graph
%   - 'kernel': function of the fundamental matrix of the graph, or
%               equivalently, function of the graph frequencies in the
%               spectral domain.
%   - 'convolution': graph signal to convolve a signal with
%   - 'matrix': for an arbitrary linear operator on graph signals
% - data: actual implementation of the filter, depending on the type:
%   - polynomial: Matlab polynomial data structure
%   - chebpoly: structure with two fields:
%     - coeffs: vector of coefficients (first is lowest order)
%     - interval: interval on which the Chebyshev polynomial is defined
%     - cheb_kind: first (1) or second (2) kind of Chebyshev polynomial
%   - kernel: matlab function (see documentation of the operator @)
%   - convolution: graph signal
%   - matrix: NxN matrix (N being the graph size)
%
%   filter = GRASP_FILTER_STRUCT() all_pass graph filter.
%
% Authors:
%  - Benjamin Girault <benjamin.girault@usc.edu>

% Copyright Benjamin Girault, University of Sourthern California, Los
% Angeles, California, USA (2018)
% 
% benjamin.girault@usc.edu
% 
% This software is a computer program whose purpose is to provide a Matlab
% / Octave toolbox for handling and displaying graph signals.
% 
% This software is governed by the CeCILL license under French law and
% abiding by the rules of distribution of free software.  You can  use, 
% modify and/ or redistribute the software under the terms of the CeCILL
% license as circulated by CEA, CNRS and INRIA at the following URL
% "http://www.cecill.info". 
% 
% As a counterpart to the access to the source code and  rights to copy,
% modify and redistribute granted by the license, users are provided only
% with a limited warranty  and the software's author,  the holder of the
% economic rights,  and the successive licensors  have only  limited
% liability. 
% 
% In this respect, the user's attention is drawn to the risks associated
% with loading,  using,  modifying and/or developing or reproducing the
% software by the user in light of its specific status of free software,
% that may mean  that it is complicated to manipulate,  and  that  also
% therefore means  that it is reserved for developers  and  experienced
% professionals having in-depth computer knowledge. Users are therefore
% encouraged to load and test the software's suitability as regards their
% requirements in conditions enabling the security of their systems and/or 
% data to be ensured and,  more generally, to use and operate it in the 
% same conditions as regards security. 
% 
% The fact that you are presently reading this means that you have had
% knowledge of the CeCILL license and that you accept its terms.

function filter = grasp_filter_struct
    filter.type = 'polynomial';
    filter.data = 1;
end