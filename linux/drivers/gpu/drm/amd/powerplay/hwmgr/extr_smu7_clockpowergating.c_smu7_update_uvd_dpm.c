
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;


 int SMU_UVD_TABLE ;
 int smu7_enable_disable_uvd_dpm (struct pp_hwmgr*,int) ;
 int smum_update_smc_table (struct pp_hwmgr*,int ) ;

__attribute__((used)) static int smu7_update_uvd_dpm(struct pp_hwmgr *hwmgr, bool bgate)
{
 if (!bgate)
  smum_update_smc_table(hwmgr, SMU_UVD_TABLE);
 return smu7_enable_disable_uvd_dpm(hwmgr, !bgate);
}
