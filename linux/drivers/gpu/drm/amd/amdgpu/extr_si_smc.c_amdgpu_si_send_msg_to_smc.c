
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct amdgpu_device {int usec_timeout; } ;
typedef int PPSMC_Result ;
typedef int PPSMC_Msg ;


 int PPSMC_Result_Failed ;
 scalar_t__ RREG32 (int ) ;
 int SMC_MESSAGE_0 ;
 int SMC_RESP_0 ;
 int WREG32 (int ,int ) ;
 int amdgpu_si_is_smc_running (struct amdgpu_device*) ;
 int udelay (int) ;

PPSMC_Result amdgpu_si_send_msg_to_smc(struct amdgpu_device *adev,
           PPSMC_Msg msg)
{
 u32 tmp;
 int i;

 if (!amdgpu_si_is_smc_running(adev))
  return PPSMC_Result_Failed;

 WREG32(SMC_MESSAGE_0, msg);

 for (i = 0; i < adev->usec_timeout; i++) {
  tmp = RREG32(SMC_RESP_0);
  if (tmp != 0)
   break;
  udelay(1);
 }

 return (PPSMC_Result)RREG32(SMC_RESP_0);
}
