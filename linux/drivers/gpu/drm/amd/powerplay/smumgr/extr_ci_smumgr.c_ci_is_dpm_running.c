
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int ci_is_smc_ram_running (struct pp_hwmgr*) ;

__attribute__((used)) static bool ci_is_dpm_running(struct pp_hwmgr *hwmgr)
{
 return ci_is_smc_ram_running(hwmgr);
}
