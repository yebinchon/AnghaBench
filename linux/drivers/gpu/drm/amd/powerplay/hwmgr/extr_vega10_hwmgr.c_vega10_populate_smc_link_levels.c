
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint32_t ;
struct vega10_pcie_table {size_t count; int * lclk; int * pcie_lane; int * pcie_gen; } ;
struct TYPE_5__ {struct vega10_pcie_table pcie_table; } ;
struct TYPE_6__ {int * LclkDid; int * PcieLaneCount; int * PcieGenSpeed; } ;
struct TYPE_4__ {TYPE_3__ pp_table; } ;
struct vega10_hwmgr {TYPE_2__ dpm_table; TYPE_1__ smc_state_table; } ;
struct pp_hwmgr {struct vega10_hwmgr* backend; } ;
typedef TYPE_3__ PPTable_t ;


 size_t NUM_LINK_LEVELS ;
 int pr_info (char*,size_t) ;
 int vega10_populate_single_lclk_level (struct pp_hwmgr*,int ,int *) ;

__attribute__((used)) static int vega10_populate_smc_link_levels(struct pp_hwmgr *hwmgr)
{
 int result = -1;
 struct vega10_hwmgr *data = hwmgr->backend;
 PPTable_t *pp_table = &(data->smc_state_table.pp_table);
 struct vega10_pcie_table *pcie_table =
   &(data->dpm_table.pcie_table);
 uint32_t i, j;

 for (i = 0; i < pcie_table->count; i++) {
  pp_table->PcieGenSpeed[i] = pcie_table->pcie_gen[i];
  pp_table->PcieLaneCount[i] = pcie_table->pcie_lane[i];

  result = vega10_populate_single_lclk_level(hwmgr,
    pcie_table->lclk[i], &(pp_table->LclkDid[i]));
  if (result) {
   pr_info("Populate LClock Level %d Failed!\n", i);
   return result;
  }
 }

 j = i - 1;
 while (i < NUM_LINK_LEVELS) {
  pp_table->PcieGenSpeed[i] = pcie_table->pcie_gen[j];
  pp_table->PcieLaneCount[i] = pcie_table->pcie_lane[j];

  result = vega10_populate_single_lclk_level(hwmgr,
    pcie_table->lclk[j], &(pp_table->LclkDid[i]));
  if (result) {
   pr_info("Populate LClock Level %d Failed!\n", i);
   return result;
  }
  i++;
 }

 return result;
}
