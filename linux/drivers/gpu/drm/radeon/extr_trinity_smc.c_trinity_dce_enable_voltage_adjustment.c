
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int PPSMC_MSG_DCE_AllowVoltageAdjustment ;
 int PPSMC_MSG_DCE_RemoveVoltageAdjustment ;
 int trinity_notify_message_to_smu (struct radeon_device*,int ) ;

int trinity_dce_enable_voltage_adjustment(struct radeon_device *rdev,
       bool enable)
{
 if (enable)
  return trinity_notify_message_to_smu(rdev, PPSMC_MSG_DCE_AllowVoltageAdjustment);
 else
  return trinity_notify_message_to_smu(rdev, PPSMC_MSG_DCE_RemoveVoltageAdjustment);
}
