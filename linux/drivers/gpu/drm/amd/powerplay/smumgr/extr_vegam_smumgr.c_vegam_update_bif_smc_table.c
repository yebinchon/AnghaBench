
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vegam_smumgr {int * bif_sclk_table; } ;
struct pp_hwmgr {scalar_t__ pptable; scalar_t__ smu_backend; } ;
struct phm_ppt_v1_pcie_table {int count; TYPE_1__* entries; } ;
struct phm_ppt_v1_information {struct phm_ppt_v1_pcie_table* pcie_table; } ;
struct TYPE_2__ {int pcie_sclk; } ;


 int SMU75_MAX_LEVELS_LINK ;

__attribute__((used)) static int vegam_update_bif_smc_table(struct pp_hwmgr *hwmgr)
{
 struct vegam_smumgr *smu_data = (struct vegam_smumgr *)(hwmgr->smu_backend);
 struct phm_ppt_v1_information *table_info =
   (struct phm_ppt_v1_information *)(hwmgr->pptable);
 struct phm_ppt_v1_pcie_table *pcie_table = table_info->pcie_table;
 int max_entry, i;

 max_entry = (SMU75_MAX_LEVELS_LINK < pcie_table->count) ?
      SMU75_MAX_LEVELS_LINK :
      pcie_table->count;

 for (i = 0; i < max_entry; i++)
  smu_data->bif_sclk_table[i] = pcie_table->entries[i].pcie_sclk;
 return 0;
}
