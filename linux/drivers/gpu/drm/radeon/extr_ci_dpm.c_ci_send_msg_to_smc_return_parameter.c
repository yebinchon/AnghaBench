
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct radeon_device {int dummy; } ;
typedef scalar_t__ PPSMC_Result ;
typedef int PPSMC_Msg ;


 scalar_t__ PPSMC_Result_OK ;
 int RREG32 (int ) ;
 int SMC_MSG_ARG_0 ;
 scalar_t__ ci_send_msg_to_smc (struct radeon_device*,int ) ;

__attribute__((used)) static PPSMC_Result ci_send_msg_to_smc_return_parameter(struct radeon_device *rdev,
       PPSMC_Msg msg, u32 *parameter)
{
 PPSMC_Result smc_result;

 smc_result = ci_send_msg_to_smc(rdev, msg);

 if ((smc_result == PPSMC_Result_OK) && parameter)
  *parameter = RREG32(SMC_MSG_ARG_0);

 return smc_result;
}
