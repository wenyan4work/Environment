#!/bin/bash

VTK_PATH=../VTK

EXTRA_ARGS=$@

rm -f CMakeCache.txt

# Enable all primary stable Trilinos packages.
cmake \
  -D CMAKE_INSTALL_PREFIX:FILEPATH="$SFTPATH" \
  -D CMAKE_BUILD_TYPE:STRING="Release" \
  -D BUILD_SHARED_LIBS=OFF \
  -D CMAKE_CXX_COMPILER:STRING="mpicxx" \
  -D CMAKE_C_COMPILER:STRING="mpicc" \
  -D CMAKE_CXX_FLAGS:STRING="$CXXFLAGS" \
  -D CMAKE_C_FLAGS:STRING="$CFLAGS" \
  -D OpenMP_CXX_FLAGS:STRING="$OPENMP_CXX_FLAGS" \
  -D OpenMP_C_FLAGS:STRING="$OPENMP_C_FLAGS" \
  -D BUILD_TESTING=OFF \
  -D VTK_PYTHON_VERSION=3 \
  -D VTK_SMP_IMPLEMENTATION_TYPE="OpenMP" \
  -D VTK_WRAP_PYTHON:BOOL=OFF \
  -D VTK_GROUP_ENABLE_Imaging=NO \
  -D VTK_GROUP_ENABLE_MPI=NO \
  -D VTK_GROUP_ENABLE_Qt=NO \
  -D VTK_GROUP_ENABLE_StandAlone=NO \
  -D VTK_GROUP_ENABLE_Views=NO \
  -D VTK_GROUP_ENABLE_Web=NO \
  -D VTK_MODULE_ENABLE_VTK_CommonCore=YES \
  -D VTK_MODULE_ENABLE_VTK_CommonExecutionModel=YES \
  -D VTK_MODULE_ENABLE_VTK_CommonMath=YES \
  -D VTK_MODULE_ENABLE_VTK_CommonMisc=YES \
  -D VTK_MODULE_ENABLE_VTK_CommonSystem=YES \
  -D VTK_MODULE_ENABLE_VTK_CommonTransforms=YES \
  -D VTK_MODULE_ENABLE_VTK_IOCore=YES \
  -D VTK_MODULE_ENABLE_VTK_IOLegacy=YES \
  -D VTK_MODULE_ENABLE_VTK_IOParallelXML=YES \
  -D VTK_MODULE_ENABLE_VTK_IOXML=YES \
  -D VTK_MODULE_ENABLE_VTK_IOXMLParser=YES \
  -D VTK_MODULE_ENABLE_VTK_ParallelCore=YES \
  $EXTRA_ARGS \
  $VTK_PATH

#   -D VTK_GROUP_ENABLE_Imaging=NO \
#   -D VTK_GROUP_ENABLE_MPI=YES \
#   -D VTK_GROUP_ENABLE_Qt=NO \
#   -D VTK_GROUP_ENABLE_StandAlone=YES \
#   -D VTK_GROUP_ENABLE_Views=NO \
#   -D VTK_GROUP_ENABLE_Web=NO \
#   -D VTK_MODULE_ENABLE_VTK_CommonColor=YES \
#   -D VTK_MODULE_ENABLE_VTK_CommonComputationalGeometry=YES \
#   -D VTK_MODULE_ENABLE_VTK_CommonDataModel=YES \
#   -D VTK_MODULE_ENABLE_VTK_CommonExecutionModel=YES \
#   -D VTK_MODULE_ENABLE_VTK_CommonMath=YES \
#   -D VTK_MODULE_ENABLE_VTK_CommonMisc=YES \
#   -D VTK_MODULE_ENABLE_VTK_CommonSystem=YES \
#   -D VTK_MODULE_ENABLE_VTK_CommonTransforms=YES \
#   -D VTK_MODULE_ENABLE_VTK_FiltersCore=YES \
#   -D VTK_MODULE_ENABLE_VTK_FiltersExtraction=YES \
#   -D VTK_MODULE_ENABLE_VTK_FiltersGeneral=YES \
#   -D VTK_MODULE_ENABLE_VTK_FiltersGeneric=YES \
#   -D VTK_MODULE_ENABLE_VTK_FiltersGeometry=YES \
#   -D VTK_MODULE_ENABLE_VTK_FiltersHybrid=YES \
#   -D VTK_MODULE_ENABLE_VTK_FiltersPython=NO \
#   -D VTK_MODULE_ENABLE_VTK_IOGeometry=NO \
#   -D VTK_MODULE_ENABLE_VTK_IOImage=NO \
#   -D VTK_MODULE_ENABLE_VTK_ImagingCore=YES \
#   -D VTK_MODULE_ENABLE_VTK_WrappingPythonCore=NO \
#   -D VTK_USE_MPI=ON \
#   -D VTK_USE_X=OFF \