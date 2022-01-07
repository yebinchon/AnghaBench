
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct radeon_device {int usec_timeout; } ;
typedef int PPSMC_Result ;
typedef int PPSMC_Msg ;


 int PPSMC_Result_Failed ;
 scalar_t__ RREG32 (int ) ;
 int SMC_MESSAGE_0 ;
 int SMC_RESP_0 ;
 int WREG32 (int ,int ) ;
 int ci_is_smc_running (struct radeon_device*) ;
 int udelay (int) ;

__attribute__((used)) static PPSMC_Result ci_send_msg_to_smc(struct radeon_device *rdev, PPSMC_Msg msg)
{
 u32 tmp;
 int i;

 if (!ci_is_smc_running(rdev))
  return PPSMC_Result_Failed;

 WREG32(SMC_MESSAGE_0, msg);

 for (i = 0; i < rdev->usec_timeout; i++) {
  tmp = RREG32(SMC_RESP_0);
  if (tmp != 0)
   break;
  udelay(1);
 }
 tmp = RREG32(SMC_RESP_0);

 return (PPSMC_Result)tmp;
}
