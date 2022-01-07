
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct smu_table_context {int overdrive_table; } ;
struct smu_context {struct smu_table_context smu_table; } ;


 int SMU_TABLE_OVERDRIVE ;
 int pr_err (char*) ;
 int smu_update_table (struct smu_context*,int ,int ,int ,int) ;
 int vega20_update_specified_od8_value (struct smu_context*,int ,int ) ;

__attribute__((used)) static int vega20_update_od8_settings(struct smu_context *smu,
          uint32_t index,
          uint32_t value)
{
 struct smu_table_context *table_context = &smu->smu_table;
 int ret;

 ret = smu_update_table(smu, SMU_TABLE_OVERDRIVE, 0,
          table_context->overdrive_table, 0);
 if (ret) {
  pr_err("Failed to export over drive table!\n");
  return ret;
 }

 ret = vega20_update_specified_od8_value(smu, index, value);
 if (ret)
  return ret;

 ret = smu_update_table(smu, SMU_TABLE_OVERDRIVE, 0,
          table_context->overdrive_table, 1);
 if (ret) {
  pr_err("Failed to import over drive table!\n");
  return ret;
 }

 return 0;
}
