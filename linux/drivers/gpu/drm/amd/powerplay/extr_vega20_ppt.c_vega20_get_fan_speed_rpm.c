
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;


 int SMU_MSG_GetCurrentRpm ;
 int pr_err (char*) ;
 int smu_read_smc_arg (struct smu_context*,int *) ;
 int smu_send_smc_msg (struct smu_context*,int ) ;

__attribute__((used)) static int vega20_get_fan_speed_rpm(struct smu_context *smu,
        uint32_t *speed)
{
 int ret;

 ret = smu_send_smc_msg(smu, SMU_MSG_GetCurrentRpm);

 if (ret) {
  pr_err("Attempt to get current RPM from SMC Failed!\n");
  return ret;
 }

 smu_read_smc_arg(smu, speed);

 return 0;
}
