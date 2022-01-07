
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int forced_level; } ;
struct TYPE_4__ {TYPE_1__ dpm; } ;
struct radeon_device {TYPE_2__ pm; } ;
typedef enum radeon_dpm_forced_level { ____Placeholder_radeon_dpm_forced_level } radeon_dpm_forced_level ;


 int EINVAL ;
 int PPSMC_MSG_SetEnabledLevels ;
 int PPSMC_MSG_SetForcedLevels ;
 scalar_t__ PPSMC_Result_OK ;
 int RADEON_DPM_FORCED_LEVEL_AUTO ;
 int RADEON_DPM_FORCED_LEVEL_HIGH ;
 int RADEON_DPM_FORCED_LEVEL_LOW ;
 scalar_t__ ni_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;

int ni_dpm_force_performance_level(struct radeon_device *rdev,
       enum radeon_dpm_forced_level level)
{
 if (level == RADEON_DPM_FORCED_LEVEL_HIGH) {
  if (ni_send_msg_to_smc_with_parameter(rdev, PPSMC_MSG_SetEnabledLevels, 0) != PPSMC_Result_OK)
   return -EINVAL;

  if (ni_send_msg_to_smc_with_parameter(rdev, PPSMC_MSG_SetForcedLevels, 1) != PPSMC_Result_OK)
   return -EINVAL;
 } else if (level == RADEON_DPM_FORCED_LEVEL_LOW) {
  if (ni_send_msg_to_smc_with_parameter(rdev, PPSMC_MSG_SetForcedLevels, 0) != PPSMC_Result_OK)
   return -EINVAL;

  if (ni_send_msg_to_smc_with_parameter(rdev, PPSMC_MSG_SetEnabledLevels, 1) != PPSMC_Result_OK)
   return -EINVAL;
 } else if (level == RADEON_DPM_FORCED_LEVEL_AUTO) {
  if (ni_send_msg_to_smc_with_parameter(rdev, PPSMC_MSG_SetForcedLevels, 0) != PPSMC_Result_OK)
   return -EINVAL;

  if (ni_send_msg_to_smc_with_parameter(rdev, PPSMC_MSG_SetEnabledLevels, 0) != PPSMC_Result_OK)
   return -EINVAL;
 }

 rdev->pm.dpm.forced_level = level;

 return 0;
}
