
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;


 int pr_err (char*) ;
 int smu_init_power (struct smu_context*) ;
 int smu_init_smc_tables (struct smu_context*) ;
 int smu_initialize_pptable (struct smu_context*) ;

__attribute__((used)) static int smu_smc_table_sw_init(struct smu_context *smu)
{
 int ret;

 ret = smu_initialize_pptable(smu);
 if (ret) {
  pr_err("Failed to init smu_initialize_pptable!\n");
  return ret;
 }





 ret = smu_init_smc_tables(smu);
 if (ret) {
  pr_err("Failed to init smc tables!\n");
  return ret;
 }





 ret = smu_init_power(smu);
 if (ret) {
  pr_err("Failed to init smu_init_power!\n");
  return ret;
 }

 return 0;
}
