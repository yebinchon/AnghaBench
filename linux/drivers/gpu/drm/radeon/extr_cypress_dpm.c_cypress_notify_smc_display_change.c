
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
typedef int PPSMC_Msg ;


 int EINVAL ;
 scalar_t__ PPSMC_MSG_HasDisplay ;
 scalar_t__ PPSMC_MSG_NoDisplay ;
 scalar_t__ PPSMC_Result_OK ;
 scalar_t__ rv770_send_msg_to_smc (struct radeon_device*,int ) ;

int cypress_notify_smc_display_change(struct radeon_device *rdev,
          bool has_display)
{
 PPSMC_Msg msg = has_display ?
  (PPSMC_Msg)PPSMC_MSG_HasDisplay : (PPSMC_Msg)PPSMC_MSG_NoDisplay;

 if (rv770_send_msg_to_smc(rdev, msg) != PPSMC_Result_OK)
  return -EINVAL;

 return 0;
}
