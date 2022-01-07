
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int * funcs; struct amdgpu_device* adev; } ;
struct amdgpu_device {int asic_type; } ;



 int pr_warn (char*) ;
 int renoir_set_ppt_funcs (struct smu_context*) ;
 int smu_v12_0_funcs ;

void smu_v12_0_set_smu_funcs(struct smu_context *smu)
{
 struct amdgpu_device *adev = smu->adev;

 smu->funcs = &smu_v12_0_funcs;

 switch (adev->asic_type) {
 case 128:
  renoir_set_ppt_funcs(smu);
  break;
 default:
  pr_warn("Unknown asic for smu12\n");
 }
}
