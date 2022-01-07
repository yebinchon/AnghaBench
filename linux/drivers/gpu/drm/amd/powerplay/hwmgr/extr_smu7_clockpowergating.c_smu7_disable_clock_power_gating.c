
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu7_hwmgr {int uvd_power_gated; int vce_power_gated; } ;
struct pp_hwmgr {scalar_t__ backend; } ;


 int smu7_powerup_uvd (struct pp_hwmgr*) ;
 int smu7_powerup_vce (struct pp_hwmgr*) ;

int smu7_disable_clock_power_gating(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);

 data->uvd_power_gated = 0;
 data->vce_power_gated = 0;

 smu7_powerup_uvd(hwmgr);
 smu7_powerup_vce(hwmgr);

 return 0;
}
