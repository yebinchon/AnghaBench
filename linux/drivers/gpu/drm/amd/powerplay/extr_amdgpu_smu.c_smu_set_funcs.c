
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smu_context {int od_enabled; } ;
struct TYPE_2__ {int pp_feature; } ;
struct amdgpu_device {int asic_type; TYPE_1__ pm; struct smu_context smu; } ;
 int EINVAL ;
 int PP_OVERDRIVE_MASK ;
 int smu_v11_0_set_smu_funcs (struct smu_context*) ;
 int smu_v12_0_set_smu_funcs (struct smu_context*) ;

__attribute__((used)) static int smu_set_funcs(struct amdgpu_device *adev)
{
 struct smu_context *smu = &adev->smu;

 switch (adev->asic_type) {
 case 128:
 case 132:
 case 130:
 case 131:
 case 133:
  if (adev->pm.pp_feature & PP_OVERDRIVE_MASK)
   smu->od_enabled = 1;
  smu_v11_0_set_smu_funcs(smu);
  break;
 case 129:
  if (adev->pm.pp_feature & PP_OVERDRIVE_MASK)
   smu->od_enabled = 1;
  smu_v12_0_set_smu_funcs(smu);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
