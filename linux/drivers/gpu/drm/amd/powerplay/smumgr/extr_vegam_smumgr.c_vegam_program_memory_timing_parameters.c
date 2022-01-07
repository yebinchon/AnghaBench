
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_12__ {int arb_table_start; } ;
struct vegam_smumgr {TYPE_6__ smu7_data; } ;
struct TYPE_10__ {size_t count; TYPE_3__* dpm_levels; } ;
struct TYPE_8__ {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_11__ {TYPE_4__ mclk_table; TYPE_2__ sclk_table; } ;
struct smu7_hwmgr {TYPE_5__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ smu_backend; scalar_t__ backend; } ;
struct SMU75_Discrete_MCArbDramTimingTable {int ** entries; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_7__ {int value; } ;
typedef int SMU75_Discrete_MCArbDramTimingTable ;


 int SMC_RAM_END ;
 int memset (struct SMU75_Discrete_MCArbDramTimingTable*,int ,int) ;
 int smu7_copy_bytes_to_smc (struct pp_hwmgr*,int ,int *,int,int ) ;
 int vegam_populate_memory_timing_parameters (struct pp_hwmgr*,int ,int ,int *) ;

__attribute__((used)) static int vegam_program_memory_timing_parameters(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *hw_data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct vegam_smumgr *smu_data = (struct vegam_smumgr *)(hwmgr->smu_backend);
 struct SMU75_Discrete_MCArbDramTimingTable arb_regs;
 uint32_t i, j;
 int result = 0;

 memset(&arb_regs, 0, sizeof(SMU75_Discrete_MCArbDramTimingTable));

 for (i = 0; i < hw_data->dpm_table.sclk_table.count; i++) {
  for (j = 0; j < hw_data->dpm_table.mclk_table.count; j++) {
   result = vegam_populate_memory_timing_parameters(hwmgr,
     hw_data->dpm_table.sclk_table.dpm_levels[i].value,
     hw_data->dpm_table.mclk_table.dpm_levels[j].value,
     &arb_regs.entries[i][j]);
   if (result)
    return result;
  }
 }

 result = smu7_copy_bytes_to_smc(
   hwmgr,
   smu_data->smu7_data.arb_table_start,
   (uint8_t *)&arb_regs,
   sizeof(SMU75_Discrete_MCArbDramTimingTable),
   SMC_RAM_END);
 return result;
}
