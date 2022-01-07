
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
struct ci_power_info {int mclk_dpm_key_disabled; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 int PPSMC_MSG_MCLKDPM_SetEnabledMask ;
 scalar_t__ PPSMC_Result_OK ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;

__attribute__((used)) static int ci_dpm_force_state_mclk(struct radeon_device *rdev, u32 n)
{
 struct ci_power_info *pi = ci_get_pi(rdev);

 if (!pi->mclk_dpm_key_disabled) {
  PPSMC_Result smc_result =
   ci_send_msg_to_smc_with_parameter(rdev, PPSMC_MSG_MCLKDPM_SetEnabledMask, 1 << n);
  if (smc_result != PPSMC_Result_OK)
   return -EINVAL;
 }

 return 0;
}
