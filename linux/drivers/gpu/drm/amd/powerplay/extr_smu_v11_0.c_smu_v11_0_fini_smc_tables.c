
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {scalar_t__ table_count; scalar_t__ metrics_time; int * metrics_table; int * tables; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int EINVAL ;
 int kfree (int *) ;
 int smu_v11_0_fini_dpm_context (struct smu_context*) ;

__attribute__((used)) static int smu_v11_0_fini_smc_tables(struct smu_context *smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;
 int ret = 0;

 if (!smu_table->tables || smu_table->table_count == 0)
  return -EINVAL;

 kfree(smu_table->tables);
 kfree(smu_table->metrics_table);
 smu_table->tables = ((void*)0);
 smu_table->table_count = 0;
 smu_table->metrics_table = ((void*)0);
 smu_table->metrics_time = 0;

 ret = smu_v11_0_fini_dpm_context(smu);
 if (ret)
  return ret;
 return 0;
}
