
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_table_context {int * overdrive_table; int * max_sustainable_clocks; int * driver_pptable; } ;
struct smu_context {struct smu_table_context smu_table; } ;
struct amdgpu_device {int flags; struct smu_context smu; } ;


 int AMD_IS_APU ;
 int kfree (int *) ;
 int smu_fini_fb_allocations (struct smu_context*) ;
 int smu_free_memory_pool (struct smu_context*) ;
 int smu_powergate_sdma (struct smu_context*,int) ;
 int smu_powergate_vcn (struct smu_context*,int) ;

__attribute__((used)) static int smu_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct smu_context *smu = &adev->smu;
 struct smu_table_context *table_context = &smu->smu_table;
 int ret = 0;

 if (adev->flags & AMD_IS_APU) {
  smu_powergate_sdma(&adev->smu, 1);
  smu_powergate_vcn(&adev->smu, 1);
 }

 kfree(table_context->driver_pptable);
 table_context->driver_pptable = ((void*)0);

 kfree(table_context->max_sustainable_clocks);
 table_context->max_sustainable_clocks = ((void*)0);

 kfree(table_context->overdrive_table);
 table_context->overdrive_table = ((void*)0);

 ret = smu_fini_fb_allocations(smu);
 if (ret)
  return ret;

 ret = smu_free_memory_pool(smu);
 if (ret)
  return ret;

 return 0;
}
