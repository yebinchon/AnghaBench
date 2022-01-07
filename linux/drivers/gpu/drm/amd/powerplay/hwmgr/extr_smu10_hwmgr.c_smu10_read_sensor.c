
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu10_hwmgr {int vcn_power_gated; } ;
struct pp_hwmgr {scalar_t__ backend; } ;






 int EINVAL ;
 int PPSMC_MSG_GetFclkFrequency ;
 int PPSMC_MSG_GetGfxclkFrequency ;
 int smu10_thermal_get_temperature (struct pp_hwmgr*) ;
 int smum_get_argument (struct pp_hwmgr*) ;
 int smum_send_msg_to_smc (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu10_read_sensor(struct pp_hwmgr *hwmgr, int idx,
     void *value, int *size)
{
 struct smu10_hwmgr *smu10_data = (struct smu10_hwmgr *)(hwmgr->backend);
 uint32_t sclk, mclk;
 int ret = 0;

 switch (idx) {
 case 130:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetGfxclkFrequency);
  sclk = smum_get_argument(hwmgr);

  *((uint32_t *)value) = sclk * 100;
  *size = 4;
  break;
 case 131:
  smum_send_msg_to_smc(hwmgr, PPSMC_MSG_GetFclkFrequency);
  mclk = smum_get_argument(hwmgr);

  *((uint32_t *)value) = mclk * 100;
  *size = 4;
  break;
 case 129:
  *((uint32_t *)value) = smu10_thermal_get_temperature(hwmgr);
  break;
 case 128:
  *(uint32_t *)value = smu10_data->vcn_power_gated ? 0 : 1;
  *size = 4;
  break;
 default:
  ret = -EINVAL;
  break;
 }

 return ret;
}
