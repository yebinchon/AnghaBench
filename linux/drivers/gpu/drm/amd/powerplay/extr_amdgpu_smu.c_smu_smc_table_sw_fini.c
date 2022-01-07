
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;


 int pr_err (char*) ;
 int smu_fini_smc_tables (struct smu_context*) ;

__attribute__((used)) static int smu_smc_table_sw_fini(struct smu_context *smu)
{
 int ret;

 ret = smu_fini_smc_tables(smu);
 if (ret) {
  pr_err("Failed to smu_fini_smc_tables!\n");
  return ret;
 }

 return 0;
}
