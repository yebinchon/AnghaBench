
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int smu8_enable_nb_dpm (struct pp_hwmgr*) ;
 int smu8_set_deep_sleep_sclk_threshold (struct pp_hwmgr*) ;
 int smu8_set_watermark_threshold (struct pp_hwmgr*) ;
 int smu8_update_low_mem_pstate (struct pp_hwmgr*,void const*) ;
 int smu8_update_sclk_limit (struct pp_hwmgr*) ;

__attribute__((used)) static int smu8_set_power_state_tasks(struct pp_hwmgr *hwmgr, const void *input)
{
 int ret = 0;

 smu8_update_sclk_limit(hwmgr);
 smu8_set_deep_sleep_sclk_threshold(hwmgr);
 smu8_set_watermark_threshold(hwmgr);
 ret = smu8_enable_nb_dpm(hwmgr);
 if (ret)
  return ret;
 smu8_update_low_mem_pstate(hwmgr, input);

 return 0;
}
