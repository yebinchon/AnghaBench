
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {scalar_t__ table_count; struct smu_table* tables; } ;
struct smu_table {int dummy; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SMU_TABLE_COUNT ;
 struct smu_table* kcalloc (int ,int,int ) ;
 int smu_tables_init (struct smu_context*,struct smu_table*) ;
 int smu_v11_0_init_dpm_context (struct smu_context*) ;

__attribute__((used)) static int smu_v11_0_init_smc_tables(struct smu_context *smu)
{
 struct smu_table_context *smu_table = &smu->smu_table;
 struct smu_table *tables = ((void*)0);
 int ret = 0;

 if (smu_table->tables || smu_table->table_count == 0)
  return -EINVAL;

 tables = kcalloc(SMU_TABLE_COUNT, sizeof(struct smu_table),
    GFP_KERNEL);
 if (!tables)
  return -ENOMEM;

 smu_table->tables = tables;

 ret = smu_tables_init(smu, tables);
 if (ret)
  return ret;

 ret = smu_v11_0_init_dpm_context(smu);
 if (ret)
  return ret;

 return 0;
}
