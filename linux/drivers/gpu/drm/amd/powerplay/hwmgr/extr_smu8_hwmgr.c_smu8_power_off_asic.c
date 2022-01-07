
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int smu8_clear_nb_dpm_flag (struct pp_hwmgr*) ;
 int smu8_disable_dpm_tasks (struct pp_hwmgr*) ;
 int smu8_power_up_display_clock_sys_pll (struct pp_hwmgr*) ;
 int smu8_reset_cc6_data (struct pp_hwmgr*) ;

__attribute__((used)) static int smu8_power_off_asic(struct pp_hwmgr *hwmgr)
{
 smu8_disable_dpm_tasks(hwmgr);
 smu8_power_up_display_clock_sys_pll(hwmgr);
 smu8_clear_nb_dpm_flag(hwmgr);
 smu8_reset_cc6_data(hwmgr);
 return 0;
}
