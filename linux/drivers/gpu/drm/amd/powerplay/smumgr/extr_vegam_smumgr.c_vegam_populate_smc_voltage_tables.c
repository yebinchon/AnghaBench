
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pp_hwmgr {int dummy; } ;
struct SMU75_Discrete_DpmTable {int dummy; } ;


 int vegam_populate_cac_table (struct pp_hwmgr*,struct SMU75_Discrete_DpmTable*) ;
 int vegam_populate_smc_mvdd_table (struct pp_hwmgr*,struct SMU75_Discrete_DpmTable*) ;
 int vegam_populate_smc_vddci_table (struct pp_hwmgr*,struct SMU75_Discrete_DpmTable*) ;

__attribute__((used)) static int vegam_populate_smc_voltage_tables(struct pp_hwmgr *hwmgr,
  struct SMU75_Discrete_DpmTable *table)
{
 vegam_populate_smc_vddci_table(hwmgr, table);
 vegam_populate_smc_mvdd_table(hwmgr, table);
 vegam_populate_cac_table(hwmgr, table);

 return 0;
}
