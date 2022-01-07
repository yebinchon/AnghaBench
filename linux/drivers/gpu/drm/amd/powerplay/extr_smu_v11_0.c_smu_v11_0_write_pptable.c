
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int driver_pptable; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int SMU_TABLE_PPTABLE ;
 int smu_update_table (struct smu_context*,int ,int ,int ,int) ;

__attribute__((used)) static int smu_v11_0_write_pptable(struct smu_context *smu)
{
 struct smu_table_context *table_context = &smu->smu_table;
 int ret = 0;

 ret = smu_update_table(smu, SMU_TABLE_PPTABLE, 0,
          table_context->driver_pptable, 1);

 return ret;
}
