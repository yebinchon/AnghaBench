
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pp_hwmgr {TYPE_1__* display_config; } ;
struct TYPE_2__ {int num_display; int multi_monitor_in_sync; } ;


 int smu7_notify_smc_display_change (struct pp_hwmgr*,int) ;

__attribute__((used)) static int
smu7_notify_smc_display_config_after_ps_adjustment(struct pp_hwmgr *hwmgr)
{
 if (hwmgr->display_config->num_display > 1 &&
   !hwmgr->display_config->multi_monitor_in_sync)
  smu7_notify_smc_display_change(hwmgr, 0);

 return 0;
}
