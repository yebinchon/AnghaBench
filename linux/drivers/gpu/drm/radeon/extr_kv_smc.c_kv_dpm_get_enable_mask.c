
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;


 int PPSMC_MSG_SCLKDPM_GetEnabledMask ;
 int RREG32_SMC (int ) ;
 int SMC_SYSCON_MSG_ARG_0 ;
 int kv_notify_message_to_smu (struct radeon_device*,int ) ;

int kv_dpm_get_enable_mask(struct radeon_device *rdev, u32 *enable_mask)
{
 int ret;

 ret = kv_notify_message_to_smu(rdev, PPSMC_MSG_SCLKDPM_GetEnabledMask);

 if (ret == 0)
  *enable_mask = RREG32_SMC(SMC_SYSCON_MSG_ARG_0);

 return ret;
}
