
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int dummy; } ;


 int PPSMC_MSG_SCLKDPM_GetEnabledMask ;
 int RREG32_SMC (int ) ;
 int amdgpu_kv_notify_message_to_smu (struct amdgpu_device*,int ) ;
 int ixSMC_SYSCON_MSG_ARG_0 ;

int amdgpu_kv_dpm_get_enable_mask(struct amdgpu_device *adev, u32 *enable_mask)
{
 int ret;

 ret = amdgpu_kv_notify_message_to_smu(adev, PPSMC_MSG_SCLKDPM_GetEnabledMask);

 if (ret == 0)
  *enable_mask = RREG32_SMC(ixSMC_SYSCON_MSG_ARG_0);

 return ret;
}
