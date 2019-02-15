library(R.matlab)
#Import .mat to R object
mat <- readMat("/path/file.mat")
# This imports a list object, but the first element of the list [[1]] has the numeric data
vol <- mat[[1]]

#Then export that volume
library(RNifti)
nii <- updateNifti(vol)
writeNifti(nii,"/path/file.nii.gz")