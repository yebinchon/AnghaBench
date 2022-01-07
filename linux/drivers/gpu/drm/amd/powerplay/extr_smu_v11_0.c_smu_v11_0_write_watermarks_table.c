
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {struct smu_table* tables; } ;
struct smu_table {int cpu_addr; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int EINVAL ;
 size_t SMU_TABLE_WATERMARKS ;
 int smu_update_table (struct smu_context*,size_t,int ,int ,int) ;

__attribute__((used)) static int smu_v11_0_write_watermarks_table(struct smu_context *smu)
{
 int ret = 0;
 struct smu_table_context *smu_table = &smu->smu_table;
 struct smu_table *table = ((void*)0);

 table = &smu_table->tables[SMU_TABLE_WATERMARKS];

 if (!table->cpu_addr)
  return -EINVAL;

 ret = smu_update_table(smu, SMU_TABLE_WATERMARKS, 0, table->cpu_addr,
    1);

 return ret;
}
