
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int flags; } ;


 int AMD_IS_APU ;
 int DRM_ERROR (char*) ;
 int gmc_v7_0_gart_enable (struct amdgpu_device*) ;
 int gmc_v7_0_init_golden_registers (struct amdgpu_device*) ;
 int gmc_v7_0_mc_load_microcode (struct amdgpu_device*) ;
 int gmc_v7_0_mc_program (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v7_0_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 gmc_v7_0_init_golden_registers(adev);

 gmc_v7_0_mc_program(adev);

 if (!(adev->flags & AMD_IS_APU)) {
  r = gmc_v7_0_mc_load_microcode(adev);
  if (r) {
   DRM_ERROR("Failed to load MC firmware!\n");
   return r;
  }
 }

 r = gmc_v7_0_gart_enable(adev);
 if (r)
  return r;

 return r;
}
