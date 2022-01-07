
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct amdgpu_device {int usec_timeout; } ;
typedef int PPSMC_Result ;


 int CKEN ;
 int PPSMC_Result_OK ;
 int RREG32_SMC (int ) ;
 int SMC_SYSCON_CLOCK_CNTL_0 ;
 int amdgpu_si_is_smc_running (struct amdgpu_device*) ;
 int udelay (int) ;

PPSMC_Result amdgpu_si_wait_for_smc_inactive(struct amdgpu_device *adev)
{
 u32 tmp;
 int i;

 if (!amdgpu_si_is_smc_running(adev))
  return PPSMC_Result_OK;

 for (i = 0; i < adev->usec_timeout; i++) {
  tmp = RREG32_SMC(SMC_SYSCON_CLOCK_CNTL_0);
  if ((tmp & CKEN) == 0)
   break;
  udelay(1);
 }

 return PPSMC_Result_OK;
}
