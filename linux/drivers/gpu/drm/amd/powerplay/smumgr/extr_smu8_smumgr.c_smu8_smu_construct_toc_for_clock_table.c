
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu8_smumgr {int toc_entry_used_count; int toc_entry_clock_table; } ;
struct pp_hwmgr {struct smu8_smumgr* smu_backend; } ;


 int SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE ;
 int TASK_TYPE_INITIALIZE ;
 int smu8_smu_populate_single_scratch_task (struct pp_hwmgr*,int ,int ,int) ;

__attribute__((used)) static int smu8_smu_construct_toc_for_clock_table(struct pp_hwmgr *hwmgr)
{
 struct smu8_smumgr *smu8_smu = hwmgr->smu_backend;

 smu8_smu->toc_entry_clock_table = smu8_smu->toc_entry_used_count;

 smu8_smu_populate_single_scratch_task(hwmgr,
    SMU8_SCRATCH_ENTRY_SMU8_FUSION_CLKTABLE,
    TASK_TYPE_INITIALIZE, 1);

 return 0;
}
