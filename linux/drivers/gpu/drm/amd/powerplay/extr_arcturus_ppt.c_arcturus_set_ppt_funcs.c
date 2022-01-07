
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int table_count; } ;
struct smu_context {int * ppt_funcs; struct smu_table_context smu_table; } ;


 int TABLE_COUNT ;
 int arcturus_ppt_funcs ;

void arcturus_set_ppt_funcs(struct smu_context *smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;

 smu->ppt_funcs = &arcturus_ppt_funcs;
 smu_table->table_count = TABLE_COUNT;
}
