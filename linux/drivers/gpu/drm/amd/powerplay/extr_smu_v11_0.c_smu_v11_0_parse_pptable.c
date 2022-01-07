
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {scalar_t__ driver_pptable; struct smu_table* tables; } ;
struct smu_table {int size; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 size_t SMU_TABLE_PPTABLE ;
 scalar_t__ kzalloc (int ,int ) ;
 int smu_append_powerplay_table (struct smu_context*) ;
 int smu_store_powerplay_table (struct smu_context*) ;

__attribute__((used)) static int smu_v11_0_parse_pptable(struct smu_context *smu)
{
 int ret;

 struct smu_table_context *table_context = &smu->smu_table;
 struct smu_table *table = &table_context->tables[SMU_TABLE_PPTABLE];

 if (table_context->driver_pptable)
  return -EINVAL;

 table_context->driver_pptable = kzalloc(table->size, GFP_KERNEL);

 if (!table_context->driver_pptable)
  return -ENOMEM;

 ret = smu_store_powerplay_table(smu);
 if (ret)
  return -EINVAL;

 ret = smu_append_powerplay_table(smu);

 return ret;
}
