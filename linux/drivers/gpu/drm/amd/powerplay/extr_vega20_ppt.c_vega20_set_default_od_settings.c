
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {scalar_t__ overdrive_table; } ;
struct smu_context {struct smu_table_context smu_table; } ;
typedef int OverDriveTable_t ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SMU_TABLE_OVERDRIVE ;
 scalar_t__ kzalloc (int,int ) ;
 int pr_err (char*) ;
 int smu_update_table (struct smu_context*,int ,int ,scalar_t__,int) ;
 int vega20_set_default_od8_setttings (struct smu_context*) ;

__attribute__((used)) static int vega20_set_default_od_settings(struct smu_context *smu,
       bool initialize)
{
 struct smu_table_context *table_context = &smu->smu_table;
 int ret;

 if (initialize) {
  if (table_context->overdrive_table)
   return -EINVAL;

  table_context->overdrive_table = kzalloc(sizeof(OverDriveTable_t), GFP_KERNEL);

  if (!table_context->overdrive_table)
   return -ENOMEM;

  ret = smu_update_table(smu, SMU_TABLE_OVERDRIVE, 0,
           table_context->overdrive_table, 0);
  if (ret) {
   pr_err("Failed to export over drive table!\n");
   return ret;
  }

  ret = vega20_set_default_od8_setttings(smu);
  if (ret)
   return ret;
 }

 ret = smu_update_table(smu, SMU_TABLE_OVERDRIVE, 0,
          table_context->overdrive_table, 1);
 if (ret) {
  pr_err("Failed to import over drive table!\n");
  return ret;
 }

 return 0;
}
