
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int power_play_table_size; void* power_play_table; void* hardcode_pptable; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int EINVAL ;

int smu_sys_get_pp_table(struct smu_context *smu, void **table)
{
 struct smu_table_context *smu_table = &smu->smu_table;

 if (!smu_table->power_play_table && !smu_table->hardcode_pptable)
  return -EINVAL;

 if (smu_table->hardcode_pptable)
  *table = smu_table->hardcode_pptable;
 else
  *table = smu_table->power_play_table;

 return smu_table->power_play_table_size;
}
