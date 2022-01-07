
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int PPSMC_MSG_SetUclkFastSwitch ;
 int smum_send_msg_to_smc_with_parameter (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static void vega10_notify_smc_display_change(struct pp_hwmgr *hwmgr,
  bool has_disp)
{
 smum_send_msg_to_smc_with_parameter(hwmgr,
   PPSMC_MSG_SetUclkFastSwitch,
   has_disp ? 1 : 0);
}
