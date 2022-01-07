
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint8_t ;
struct TYPE_9__ {int pcie_dpm_enable_mask; } ;
struct TYPE_10__ {int count; TYPE_1__* dpm_levels; } ;
struct smu7_dpm_table {TYPE_5__ pcie_speed_table; } ;
struct smu7_hwmgr {int pcie_spc_cap; TYPE_4__ dpm_level_enable_mask; struct smu7_dpm_table dpm_table; } ;
struct pp_hwmgr {scalar_t__ smu_backend; scalar_t__ backend; } ;
struct TYPE_8__ {void* LinkLevelCount; } ;
struct polaris10_smumgr {TYPE_3__ smc_state_table; } ;
struct SMU74_Discrete_DpmTable {TYPE_2__* LinkLevel; } ;
struct TYPE_7__ {int EnabledForActivity; void* UpThreshold; void* DownThreshold; void* SPC; void* PcieLaneCount; void* PcieGenSpeed; } ;
struct TYPE_6__ {int param1; scalar_t__ value; } ;


 void* PP_HOST_TO_SMC_UL (int) ;
 scalar_t__ encode_pcie_lane_width (int ) ;
 int phm_get_dpm_level_enable_mask_value (TYPE_5__*) ;

__attribute__((used)) static int polaris10_populate_smc_link_level(struct pp_hwmgr *hwmgr,
  struct SMU74_Discrete_DpmTable *table)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct polaris10_smumgr *smu_data = (struct polaris10_smumgr *)(hwmgr->smu_backend);
 struct smu7_dpm_table *dpm_table = &data->dpm_table;
 int i;



 for (i = 0; i <= dpm_table->pcie_speed_table.count; i++) {
  table->LinkLevel[i].PcieGenSpeed =
    (uint8_t)dpm_table->pcie_speed_table.dpm_levels[i].value;
  table->LinkLevel[i].PcieLaneCount = (uint8_t)encode_pcie_lane_width(
    dpm_table->pcie_speed_table.dpm_levels[i].param1);
  table->LinkLevel[i].EnabledForActivity = 1;
  table->LinkLevel[i].SPC = (uint8_t)(data->pcie_spc_cap & 0xff);
  table->LinkLevel[i].DownThreshold = PP_HOST_TO_SMC_UL(5);
  table->LinkLevel[i].UpThreshold = PP_HOST_TO_SMC_UL(30);
 }

 smu_data->smc_state_table.LinkLevelCount =
   (uint8_t)dpm_table->pcie_speed_table.count;


 data->dpm_level_enable_mask.pcie_dpm_enable_mask =
   phm_get_dpm_level_enable_mask_value(&dpm_table->pcie_speed_table);

 return 0;
}
