
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_feature {int feature_num; int supported; int enabled; } ;
struct smu_context {scalar_t__ pm_enabled; struct smu_feature smu_feature; } ;


 int SMU_MSG_DisableAllSmuFeatures ;
 int SMU_MSG_EnableAllSmuFeatures ;
 int bitmap_copy (int ,unsigned long*,int ) ;
 int smu_feature_get_enabled_mask (struct smu_context*,int *,int) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

__attribute__((used)) static int smu_v11_0_system_features_control(struct smu_context *smu,
          bool en)
{
 struct smu_feature *feature = &smu->smu_feature;
 uint32_t feature_mask[2];
 int ret = 0;

 if (smu->pm_enabled) {
  ret = smu_send_smc_msg(smu, (en ? SMU_MSG_EnableAllSmuFeatures :
          SMU_MSG_DisableAllSmuFeatures));
  if (ret)
   return ret;
 }

 ret = smu_feature_get_enabled_mask(smu, feature_mask, 2);
 if (ret)
  return ret;

 bitmap_copy(feature->enabled, (unsigned long *)&feature_mask,
      feature->feature_num);
 bitmap_copy(feature->supported, (unsigned long *)&feature_mask,
      feature->feature_num);

 return ret;
}
