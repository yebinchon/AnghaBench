
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint32_t ;
struct TYPE_11__ {size_t count; TYPE_3__* dpm_levels; } ;
struct TYPE_9__ {size_t count; TYPE_1__* dpm_levels; } ;
struct TYPE_12__ {TYPE_4__ mclk_table; TYPE_2__ sclk_table; } ;
struct smu7_hwmgr {TYPE_5__ dpm_table; } ;
struct pp_hwmgr {scalar_t__ smu_backend; scalar_t__ backend; } ;
struct ci_smumgr {int arb_table_start; } ;
struct TYPE_13__ {int ** entries; } ;
struct TYPE_10__ {int value; } ;
struct TYPE_8__ {int value; } ;
typedef TYPE_6__ SMU7_Discrete_MCArbDramTimingTable ;


 int SMC_RAM_END ;
 int ci_copy_bytes_to_smc (struct pp_hwmgr*,int ,int *,int,int ) ;
 int ci_populate_memory_timing_parameters (struct pp_hwmgr*,int ,int ,int *) ;
 int memset (TYPE_6__*,int,int) ;

__attribute__((used)) static int ci_program_memory_timing_parameters(struct pp_hwmgr *hwmgr)
{
 struct smu7_hwmgr *data = (struct smu7_hwmgr *)(hwmgr->backend);
 struct ci_smumgr *smu_data = (struct ci_smumgr *)(hwmgr->smu_backend);
 int result = 0;
 SMU7_Discrete_MCArbDramTimingTable arb_regs;
 uint32_t i, j;

 memset(&arb_regs, 0x00, sizeof(SMU7_Discrete_MCArbDramTimingTable));

 for (i = 0; i < data->dpm_table.sclk_table.count; i++) {
  for (j = 0; j < data->dpm_table.mclk_table.count; j++) {
   result = ci_populate_memory_timing_parameters
    (hwmgr, data->dpm_table.sclk_table.dpm_levels[i].value,
     data->dpm_table.mclk_table.dpm_levels[j].value,
     &arb_regs.entries[i][j]);

   if (0 != result)
    break;
  }
 }

 if (0 == result) {
  result = ci_copy_bytes_to_smc(
    hwmgr,
    smu_data->arb_table_start,
    (uint8_t *)&arb_regs,
    sizeof(SMU7_Discrete_MCArbDramTimingTable),
    SMC_RAM_END
    );
 }

 return result;
}
