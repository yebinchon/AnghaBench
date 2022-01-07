
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_2__ {scalar_t__ kaddr; } ;
struct smu8_smumgr {scalar_t__ toc_entry_used_count; TYPE_1__ toc_buffer; } ;
struct pp_hwmgr {struct smu8_smumgr* smu_backend; } ;
struct TOC {scalar_t__* JobList; } ;


 size_t JOB_GFX_SAVE ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH ;
 int SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM ;
 int TASK_TYPE_UCODE_SAVE ;
 int smu8_smu_populate_single_scratch_task (struct pp_hwmgr*,int ,int ,int) ;

__attribute__((used)) static int smu8_smu_construct_toc_for_vddgfx_enter(struct pp_hwmgr *hwmgr)
{
 struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;
 struct TOC *toc = (struct TOC *)smu8_smu->toc_buffer.kaddr;

 toc->JobList[JOB_GFX_SAVE] = (uint8_t)smu8_smu->toc_entry_used_count;
 smu8_smu_populate_single_scratch_task(hwmgr,
        SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SCRATCH,
        TASK_TYPE_UCODE_SAVE, 0);

 smu8_smu_populate_single_scratch_task(hwmgr,
        SMU8_SCRATCH_ENTRY_UCODE_ID_RLC_SRM_DRAM,
        TASK_TYPE_UCODE_SAVE, 1);

 return 0;
}
