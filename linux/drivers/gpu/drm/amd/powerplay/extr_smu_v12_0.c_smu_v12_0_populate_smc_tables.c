
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int clocks_table; struct smu_table* tables; } ;
struct smu_table {int cpu_addr; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int EINVAL ;
 size_t SMU_TABLE_DPMCLOCKS ;
 int smu_update_table (struct smu_context*,size_t,int ,int ,int) ;

__attribute__((used)) static int smu_v12_0_populate_smc_tables(struct smu_context *smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;
 struct smu_table *table = ((void*)0);

 table = &smu_table->tables[SMU_TABLE_DPMCLOCKS];
 if (!table)
  return -EINVAL;

 if (!table->cpu_addr)
  return -EINVAL;

 return smu_update_table(smu, SMU_TABLE_DPMCLOCKS, 0, smu_table->clocks_table, 0);
}
