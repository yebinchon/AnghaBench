
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int * funcs; struct amdgpu_device* adev; } ;
struct amdgpu_device {int asic_type; } ;







 int arcturus_set_ppt_funcs (struct smu_context*) ;
 int navi10_set_ppt_funcs (struct smu_context*) ;
 int pr_warn (char*) ;
 int smu_v11_0_funcs ;
 int vega20_set_ppt_funcs (struct smu_context*) ;

void smu_v11_0_set_smu_funcs(struct smu_context *smu)
{
 struct amdgpu_device *adev = smu->adev;

 smu->funcs = &smu_v11_0_funcs;
 switch (adev->asic_type) {
 case 128:
  vega20_set_ppt_funcs(smu);
  break;
 case 132:
  arcturus_set_ppt_funcs(smu);
  break;
 case 131:
 case 129:
 case 130:
  navi10_set_ppt_funcs(smu);
  break;
 default:
  pr_warn("Unknown asic for smu11\n");
 }
}
