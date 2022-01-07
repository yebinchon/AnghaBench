
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int PPSMC_MSG_ACPDPM_Disable ;
 int PPSMC_MSG_ACPDPM_Enable ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;

__attribute__((used)) static int kv_enable_acp_dpm(struct radeon_device *rdev, bool enable)
{
 return kv_notify_message_to_smu(rdev, enable ?
     PPSMC_MSG_ACPDPM_Enable : PPSMC_MSG_ACPDPM_Disable);
}
