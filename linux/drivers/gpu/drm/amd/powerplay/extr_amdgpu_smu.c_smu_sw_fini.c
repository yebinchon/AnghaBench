
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int * irq_source; } ;
struct amdgpu_device {struct smu_context smu; } ;


 int kfree (int *) ;
 int pr_err (char*) ;
 int smu_fini_power (struct smu_context*) ;
 int smu_smc_table_sw_fini (struct smu_context*) ;

__attribute__((used)) static int smu_sw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct smu_context *smu = &adev->smu;
 int ret;

 kfree(smu->irq_source);
 smu->irq_source = ((void*)0);

 ret = smu_smc_table_sw_fini(smu);
 if (ret) {
  pr_err("Failed to sw fini smc table!\n");
  return ret;
 }

 ret = smu_fini_power(smu);
 if (ret) {
  pr_err("Failed to init smu_fini_power!\n");
  return ret;
 }

 return 0;
}
