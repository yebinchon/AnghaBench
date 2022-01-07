
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int usec_timeout; } ;
typedef int PPSMC_Result ;


 int PPSMC_Result_OK ;
 int RREG32 (int ) ;
 int SMC_IO ;
 int SMC_STOP_MODE ;
 int rv770_is_smc_running (struct radeon_device*) ;
 int udelay (int) ;

PPSMC_Result rv770_wait_for_smc_inactive(struct radeon_device *rdev)
{
 int i;
 PPSMC_Result result = PPSMC_Result_OK;

 if (!rv770_is_smc_running(rdev))
  return result;

 for (i = 0; i < rdev->usec_timeout; i++) {
  if (RREG32(SMC_IO) & SMC_STOP_MODE)
   break;
  udelay(1);
 }

 return result;
}
