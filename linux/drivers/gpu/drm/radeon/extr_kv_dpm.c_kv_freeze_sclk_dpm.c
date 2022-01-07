
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int PPSMC_MSG_SCLKDPM_FreezeLevel ;
 int PPSMC_MSG_SCLKDPM_UnfreezeLevel ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;

__attribute__((used)) static int kv_freeze_sclk_dpm(struct radeon_device *rdev, bool freeze)
{
 return kv_notify_message_to_smu(rdev, freeze ?
     PPSMC_MSG_SCLKDPM_FreezeLevel : PPSMC_MSG_SCLKDPM_UnfreezeLevel);
}
