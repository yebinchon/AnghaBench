
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;


 int SMU_MSG_SetMinDeepSleepDcefclk ;
 int pr_err (char*) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int ) ;

__attribute__((used)) static int smu_v11_0_set_deep_sleep_dcefclk(struct smu_context *smu, uint32_t clk)
{
 int ret;

 ret = smu_send_smc_msg_with_param(smu,
       SMU_MSG_SetMinDeepSleepDcefclk, clk);
 if (ret)
  pr_err("SMU11 attempt to set divider for DCEFCLK Failed!");

 return ret;
}
