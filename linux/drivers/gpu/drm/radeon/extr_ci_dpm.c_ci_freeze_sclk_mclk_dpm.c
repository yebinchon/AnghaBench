
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct ci_power_info {int need_update_smu7_dpm_table; int mclk_dpm_key_disabled; int sclk_dpm_key_disabled; } ;
typedef scalar_t__ PPSMC_Result ;


 int DPMTABLE_OD_UPDATE_MCLK ;
 int DPMTABLE_OD_UPDATE_SCLK ;
 int DPMTABLE_UPDATE_SCLK ;
 int EINVAL ;
 int PPSMC_MSG_MCLKDPM_FreezeLevel ;
 int PPSMC_MSG_SCLKDPM_FreezeLevel ;
 scalar_t__ PPSMC_Result_OK ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int ci_freeze_sclk_mclk_dpm(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 PPSMC_Result smc_result;

 if (!pi->need_update_smu7_dpm_table)
  return 0;

 if ((!pi->sclk_dpm_key_disabled) &&
     (pi->need_update_smu7_dpm_table & (DPMTABLE_OD_UPDATE_SCLK | DPMTABLE_UPDATE_SCLK))) {
  smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_SCLKDPM_FreezeLevel);
  if (smc_result != PPSMC_Result_OK)
   return -EINVAL;
 }

 if ((!pi->mclk_dpm_key_disabled) &&
     (pi->need_update_smu7_dpm_table & DPMTABLE_OD_UPDATE_MCLK)) {
  smc_result = ci_send_msg_to_smc(rdev, PPSMC_MSG_MCLKDPM_FreezeLevel);
  if (smc_result != PPSMC_Result_OK)
   return -EINVAL;
 }

 return 0;
}
