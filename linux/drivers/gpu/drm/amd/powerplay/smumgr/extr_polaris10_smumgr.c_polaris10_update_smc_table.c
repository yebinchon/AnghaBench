
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct pp_hwmgr {int dummy; } ;





 int polaris10_update_bif_smc_table (struct pp_hwmgr*) ;
 int polaris10_update_uvd_smc_table (struct pp_hwmgr*) ;
 int polaris10_update_vce_smc_table (struct pp_hwmgr*) ;

__attribute__((used)) static int polaris10_update_smc_table(struct pp_hwmgr *hwmgr, uint32_t type)
{
 switch (type) {
 case 129:
  polaris10_update_uvd_smc_table(hwmgr);
  break;
 case 128:
  polaris10_update_vce_smc_table(hwmgr);
  break;
 case 130:
  polaris10_update_bif_smc_table(hwmgr);
 default:
  break;
 }
 return 0;
}
