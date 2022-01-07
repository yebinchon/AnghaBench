
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pcie_dpm_enable_mask; scalar_t__ mclk_dpm_enable_mask; scalar_t__ sclk_dpm_enable_mask; } ;
struct ci_power_info {TYPE_1__ dpm_level_enable_mask; int pcie_dpm_key_disabled; int mclk_dpm_key_disabled; int sclk_dpm_key_disabled; } ;
typedef scalar_t__ PPSMC_Result ;


 int EINVAL ;
 int PPSMC_MSG_MCLKDPM_SetEnabledMask ;
 int PPSMC_MSG_PCIeDPM_SetEnabledMask ;
 int PPSMC_MSG_SCLKDPM_SetEnabledMask ;
 scalar_t__ PPSMC_Result_OK ;
 int ci_apply_disp_minimum_voltage_request (struct radeon_device*) ;
 struct ci_power_info* ci_get_pi (struct radeon_device*) ;
 scalar_t__ ci_send_msg_to_smc_with_parameter (struct radeon_device*,int ,scalar_t__) ;

__attribute__((used)) static int ci_upload_dpm_level_enable_mask(struct radeon_device *rdev)
{
 struct ci_power_info *pi = ci_get_pi(rdev);
 PPSMC_Result result;

 ci_apply_disp_minimum_voltage_request(rdev);

 if (!pi->sclk_dpm_key_disabled) {
  if (pi->dpm_level_enable_mask.sclk_dpm_enable_mask) {
   result = ci_send_msg_to_smc_with_parameter(rdev,
           PPSMC_MSG_SCLKDPM_SetEnabledMask,
           pi->dpm_level_enable_mask.sclk_dpm_enable_mask);
   if (result != PPSMC_Result_OK)
    return -EINVAL;
  }
 }

 if (!pi->mclk_dpm_key_disabled) {
  if (pi->dpm_level_enable_mask.mclk_dpm_enable_mask) {
   result = ci_send_msg_to_smc_with_parameter(rdev,
           PPSMC_MSG_MCLKDPM_SetEnabledMask,
           pi->dpm_level_enable_mask.mclk_dpm_enable_mask);
   if (result != PPSMC_Result_OK)
    return -EINVAL;
  }
 }
 return 0;
}
