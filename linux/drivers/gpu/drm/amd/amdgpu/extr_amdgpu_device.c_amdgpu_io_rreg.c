
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int rio_mem_size; scalar_t__ rio_mem; } ;


 int ioread32 (scalar_t__) ;
 int iowrite32 (int,scalar_t__) ;
 int mmMM_DATA ;
 int mmMM_INDEX ;

u32 amdgpu_io_rreg(struct amdgpu_device *adev, u32 reg)
{
 if ((reg * 4) < adev->rio_mem_size)
  return ioread32(adev->rio_mem + (reg * 4));
 else {
  iowrite32((reg * 4), adev->rio_mem + (mmMM_INDEX * 4));
  return ioread32(adev->rio_mem + (mmMM_DATA * 4));
 }
}
