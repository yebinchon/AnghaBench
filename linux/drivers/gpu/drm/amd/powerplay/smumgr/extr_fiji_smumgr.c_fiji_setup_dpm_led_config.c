
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pp_hwmgr {int dummy; } ;
struct TYPE_3__ {int mask_low; } ;
typedef TYPE_1__ pp_atomctrl_voltage_table ;


 int PPSMC_MSG_LedConfig ;
 int VOLTAGE_OBJ_GPIO_LUT ;
 int VOLTAGE_TYPE_LEDDPM ;
 int atomctrl_get_voltage_table_v3 (struct pp_hwmgr*,int ,int ,TYPE_1__*) ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int fiji_setup_dpm_led_config(struct pp_hwmgr *hwmgr)
{
 pp_atomctrl_voltage_table param_led_dpm;
 int result = 0;
 u32 mask = 0;

 result = atomctrl_get_voltage_table_v3(hwmgr,
            VOLTAGE_TYPE_LEDDPM, VOLTAGE_OBJ_GPIO_LUT,
            &param_led_dpm);
 if (result == 0) {
  int i, j;
  u32 tmp = param_led_dpm.mask_low;

  for (i = 0, j = 0; i < 32; i++) {
   if (tmp & 1) {
    mask |= (i << (8 * j));
    if (++j >= 3)
     break;
   }
   tmp >>= 1;
  }
 }
 if (mask)
  smum_send_msg_to_smc_with_parameter(hwmgr,
          PPSMC_MSG_LedConfig,
          mask);
 return 0;
}
