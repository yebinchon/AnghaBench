
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef int PPSMC_Msg ;


 int EINVAL ;
 scalar_t__ PPSMC_MSG_NoForcedLevel ;
 scalar_t__ PPSMC_MSG_TwoLevelsDisabled ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;

int rv770_restrict_performance_levels_before_switch(struct radeon_device *rdev)
{
 if (rv770_send_msg_to_smc(rdev, (PPSMC_Msg)(PPSMC_MSG_NoForcedLevel)) != PPSMC_Result_OK)
  return -EINVAL;

 if (rv770_send_msg_to_smc(rdev, (PPSMC_Msg)(PPSMC_MSG_TwoLevelsDisabled)) != PPSMC_Result_OK)
  return -EINVAL;

 return 0;
}
