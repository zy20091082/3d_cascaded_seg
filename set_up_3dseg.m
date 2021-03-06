% addpath(genpath('C:\Users\luvegood\Documents\MATLAB\toolbox_graph')); % addpath(genpath(fullfile(pwd,'../toolbox_graph')));
addpath(genpath(fullfile(pwd,'features')));
addpath(genpath(fullfile(pwd,'super_patch')));
addpath(genpath(fullfile(pwd,'visualization')));
addpath(genpath(fullfile(pwd,'learning')));
addpath(genpath(fullfile(pwd,'helper')));
addpath(genpath(fullfile(pwd,'cascade_seg')));
addpath(genpath(fullfile(pwd,'measures'))); 
addpath(genpath(fullfile(pwd,'Descriptors')));
addpath(genpath(fullfile(pwd,'others')));
addpath(genpath(fullfile(pwd,'cascade')));
addpath(genpath(fullfile(pwd,'../toolbox_graph')));
addpath(genpath(fullfile(pwd,'../minFunc')));
addpath(genpath(fullfile(pwd,'../geom3d')));
addpath(pwd);

% addpath(genpath('C:\Users\luvegood\Documents\MATLAB\minFunc\minFunc'));
fprintf('Path set up done!\n');

cd features/mex/
mex compFaceNorm.cpp
mex getNeighbor.cpp
cd ..
cd ..
cd super_patch/
mex spfa_c.cpp
cd ..
cd measures/mex
mex randindex.cpp
cd ..
cd ..
cd helper
mex DistBetween2LineSegment_mex.cpp
cd ..

fprintf('Mex file compiled!\n');