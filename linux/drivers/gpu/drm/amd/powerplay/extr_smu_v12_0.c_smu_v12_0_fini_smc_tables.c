
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {scalar_t__ table_count; int * tables; int * clocks_table; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int EINVAL ;
 int kfree (int *) ;

__attribute__((used)) static int smu_v12_0_fini_smc_tables(struct smu_context *smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;

 if (!smu_table->tables || smu_table->table_count == 0)
  return -EINVAL;

 kfree(smu_table->clocks_table);
 kfree(smu_table->tables);

 smu_table->clocks_table = ((void*)0);
 smu_table->tables = ((void*)0);

 return 0;
}
