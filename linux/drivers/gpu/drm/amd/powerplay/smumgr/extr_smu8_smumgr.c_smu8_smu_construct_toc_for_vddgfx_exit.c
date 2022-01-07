
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ kaddr; } ;
struct smu8_smumgr {scalar_t__ toc_entry_used_count; TYPE_1__ toc_buffer; } ;
struct pp_hwmgr {scalar_t__ chip_id; struct smu8_smumgr* smu_backend; } ;
struct TOC {scalar_t__* JobList; } ;


 scalar_t__ CHIP_STONEY ;
 size_t JOB_GFX_RESTORE ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1 ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2 ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_ARAM ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM ;
 int TASK_TYPE_UCODE_LOAD ;
 int smu8_smu_populate_single_scratch_task (struct pp_hwmgr*,int ,int ,int) ;
 int smu8_smu_populate_single_ucode_load_task (struct pp_hwmgr*,int ,int) ;

__attribute__((used)) static int smu8_smu_construct_toc_for_vddgfx_exit(struct pp_hwmgr *hwmgr)
{
 struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;
 struct TOC *toc = (struct TOC *)smu8_smu->toc_buffer.kaddr;

 toc->JobList[JOB_GFX_RESTORE] = (uint8_t)smu8_smu->toc_entry_used_count;

 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_CE, 0);
 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_PFP, 0);
 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_ME, 0);
 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1, 0);

 if (hwmgr->chip_id == CHIP_STONEY)
  smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT1, 0);
 else
  smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_CP_MEC_JT2, 0);

 smu8_smu_populate_single_ucode_load_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_G, 0);


 smu8_smu_populate_single_scratch_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH,
    TASK_TYPE_UCODE_LOAD, 0);

 smu8_smu_populate_single_scratch_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_ARAM,
    TASK_TYPE_UCODE_LOAD, 0);

 smu8_smu_populate_single_scratch_task(hwmgr,
    SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM,
    TASK_TYPE_UCODE_LOAD, 1);

 return 0;
}
