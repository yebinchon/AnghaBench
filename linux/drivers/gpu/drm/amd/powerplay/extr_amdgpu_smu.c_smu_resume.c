
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smu_context {int mutex; } ;
struct amdgpu_device {struct smu_context smu; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;
 int smu_smc_table_hw_init (struct smu_context*,int) ;
 int smu_start_thermal_control (struct smu_context*) ;

__attribute__((used)) static int smu_resume(void *handle)
{
 int ret;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct smu_context *smu = &adev->smu;

 pr_info("SMU is resuming...\n");

 mutex_lock(&smu->mutex);

 ret = smu_smc_table_hw_init(smu, 0);
 if (ret)
  goto failed;

 ret = smu_start_thermal_control(smu);
 if (ret)
  goto failed;

 mutex_unlock(&smu->mutex);

 pr_info("SMU is resumed successfully!\n");

 return 0;
failed:
 mutex_unlock(&smu->mutex);
 return ret;
}
