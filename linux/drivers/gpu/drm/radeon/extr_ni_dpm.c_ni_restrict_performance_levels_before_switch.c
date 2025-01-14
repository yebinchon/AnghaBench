
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int EINVAL ;
 int PPSMC_MSG_NoForcedLevel ;
 int PPSMC_MSG_SetEnabledLevels ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ ni_send_msg_to_smc_with_parameter (struct radeon_device*,int ,int) ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static int ni_restrict_performance_levels_before_switch(struct radeon_device *rdev)
{
 if (rv770_send_msg_to_smc(rdev, PPSMC_MSG_NoForcedLevel) != PPSMC_Result_OK)
  return -EINVAL;

 return (ni_send_msg_to_smc_with_parameter(rdev, PPSMC_MSG_SetEnabledLevels, 1) == PPSMC_Result_OK) ?
  0 : -EINVAL;
}
