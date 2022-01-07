
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int table_count; } ;
struct smu_context {int smc_if_version; int * ppt_funcs; struct smu_table_context smu_table; } ;


 int SMU12_DRIVER_IF_VERSION ;
 int TABLE_COUNT ;
 int renoir_ppt_funcs ;

void renoir_set_ppt_funcs(struct smu_context *smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;

 smu->ppt_funcs = &renoir_ppt_funcs;
 smu->smc_if_version = SMU12_DRIVER_IF_VERSION;
 smu_table->table_count = TABLE_COUNT;
}
