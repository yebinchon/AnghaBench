
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;
typedef enum smu_clk_type { ____Placeholder_smu_clk_type } smu_clk_type ;


 int EINVAL ;
 int SMU_MSG_SetHardMaxByFreq ;
 int SMU_MSG_SetHardMinByFreq ;
 int smu_clk_dpm_is_enabled (struct smu_context*,int) ;
 int smu_clk_get_index (struct smu_context*,int) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

int smu_set_hard_freq_range(struct smu_context *smu, enum smu_clk_type clk_type,
       uint32_t min, uint32_t max)
{
 int ret = 0, clk_id = 0;
 uint32_t param;

 if (min <= 0 && max <= 0)
  return -EINVAL;

 if (!smu_clk_dpm_is_enabled(smu, clk_type))
  return 0;

 clk_id = smu_clk_get_index(smu, clk_type);
 if (clk_id < 0)
  return clk_id;

 if (max > 0) {
  param = (uint32_t)((clk_id << 16) | (max & 0xffff));
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_SetHardMaxByFreq,
        param);
  if (ret)
   return ret;
 }

 if (min > 0) {
  param = (uint32_t)((clk_id << 16) | (min & 0xffff));
  ret = smu_send_smc_msg_with_param(smu, SMU_MSG_SetHardMinByFreq,
        param);
  if (ret)
   return ret;
 }


 return ret;
}
