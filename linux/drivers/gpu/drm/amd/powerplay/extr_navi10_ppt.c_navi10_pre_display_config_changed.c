
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;


 int SMU_FEATURE_DPM_UCLK_BIT ;
 int SMU_MSG_NumOfDisplays ;
 int SMU_UCLK ;
 scalar_t__ smu_feature_is_enabled (struct smu_context*,int ) ;
 int smu_get_dpm_freq_range (struct smu_context*,int ,int *,int *) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;
 int smu_set_hard_freq_range (struct smu_context*,int ,int ,int ) ;

__attribute__((used)) static int navi10_pre_display_config_changed(struct smu_context *smu)
{
 int ret = 0;
 uint32_t max_freq = 0;

 ret = smu_send_smc_msg_with_param(smu, SMU_MSG_NumOfDisplays, 0);
 if (ret)
  return ret;

 if (smu_feature_is_enabled(smu, SMU_FEATURE_DPM_UCLK_BIT)) {
  ret = smu_get_dpm_freq_range(smu, SMU_UCLK, ((void*)0), &max_freq);
  if (ret)
   return ret;
  ret = smu_set_hard_freq_range(smu, SMU_UCLK, 0, max_freq);
  if (ret)
   return ret;
 }

 return ret;
}
