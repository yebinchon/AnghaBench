
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdgpu_device {int flags; int dev; } ;


 int AMD_IS_APU ;
 int dev_err (int ,char*) ;
 int gmc_v6_0_gart_enable (struct amdgpu_device*) ;
 int gmc_v6_0_mc_load_microcode (struct amdgpu_device*) ;
 int gmc_v6_0_mc_program (struct amdgpu_device*) ;

__attribute__((used)) static int gmc_v6_0_hw_init(void *handle)
{
 int r;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 gmc_v6_0_mc_program(adev);

 if (!(adev->flags & AMD_IS_APU)) {
  r = gmc_v6_0_mc_load_microcode(adev);
  if (r) {
   dev_err(adev->dev, "Failed to load MC firmware!\n");
   return r;
  }
 }

 r = gmc_v6_0_gart_enable(adev);
 if (r)
  return r;

 return r;
}
