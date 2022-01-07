
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int dummy; } ;


 int smu_set_default_dpm_table (struct smu_context*) ;

__attribute__((used)) static int smu_v11_0_populate_smc_pptable(struct smu_context *smu)
{
 int ret;

 ret = smu_set_default_dpm_table(smu);

 return ret;
}
