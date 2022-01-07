
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int PPSMC_MSG_DisableBAPM ;
 int PPSMC_MSG_EnableBAPM ;
 int trinity_notify_message_to_smu (struct radeon_device*,int ) ;

int trinity_dpm_bapm_enable(struct radeon_device *rdev, bool enable)
{
 if (enable)
  return trinity_notify_message_to_smu(rdev, PPSMC_MSG_EnableBAPM);
 else
  return trinity_notify_message_to_smu(rdev, PPSMC_MSG_DisableBAPM);
}
