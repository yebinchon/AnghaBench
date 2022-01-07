
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_context {int dummy; } ;


 int AVFS_CURVE ;
 int OD8_HOTCURVE_TEMPERATURE ;
 int SMU_MSG_GetAVFSVoltageByDpm ;
 int VOLTAGE_SCALE ;
 int pr_err (char*) ;
 int smu_read_smc_arg (struct smu_context*,int*) ;
 int smu_send_smc_msg_with_param (struct smu_context*,int ,int) ;

__attribute__((used)) static int vega20_overdrive_get_gfx_clk_base_voltage(struct smu_context *smu,
           uint32_t *voltage,
           uint32_t freq)
{
 int ret;

 ret = smu_send_smc_msg_with_param(smu,
   SMU_MSG_GetAVFSVoltageByDpm,
   ((AVFS_CURVE << 24) | (OD8_HOTCURVE_TEMPERATURE << 16) | freq));
 if (ret) {
  pr_err("[GetBaseVoltage] failed to get GFXCLK AVFS voltage from SMU!");
  return ret;
 }

 smu_read_smc_arg(smu, voltage);
 *voltage = *voltage / VOLTAGE_SCALE;

 return 0;
}
