
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_smumgr {int toc_entry_used_count; int toc_entry_initialize_index; } ;
struct pp_hwmgr {scalar_t__ chip_id; struct smu8_smumgr* smu_backend; } ;


 scalar_t__ CHIP_STONEY ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1 ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2 ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_SDMA0 ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_SDMA1 ;
 int smu8_smu_populate_single_ucode_load_task (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu8_smu_construct_toc_for_bootup(struct pp_hwmgr *hwmgr)
{
 struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;

 smu8_smu->toc_entry_initialize_index = smu8_smu->toc_entry_used_count;

 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_SDMA0, 0);
 if (hwmgr->chip_id != CHIP_STONEY)
  smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_SDMA1, 0);
 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE, 0);
 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP, 0);
 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME, 0);
 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1, 0);
 if (hwmgr->chip_id != CHIP_STONEY)
  smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2, 0);
 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G, 1);

 return 0;
}
