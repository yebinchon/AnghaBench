
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpm_level; } ;
struct smu_context {int mutex; TYPE_1__ smu_dpm; int pm_enabled; } ;
struct amdgpu_device {struct smu_context smu; } ;


 int AMD_PP_TASK_COMPLETE_INIT ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smu_handle_task (struct smu_context*,int ,int ) ;

__attribute__((used)) static int smu_late_init(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;
 struct smu_context *smu = &adev->smu;

 if (!smu->pm_enabled)
  return 0;

 mutex_lock(&smu->mutex);
 smu_handle_task(&adev->smu,
   smu->smu_dpm.dpm_level,
   AMD_PP_TASK_COMPLETE_INIT);
 mutex_unlock(&smu->mutex);

 return 0;
}
