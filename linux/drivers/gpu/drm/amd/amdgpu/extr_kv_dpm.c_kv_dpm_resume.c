
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpm_enabled; int mutex; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int amdgpu_pm_compute_clocks (struct amdgpu_device*) ;
 int kv_dpm_enable (struct amdgpu_device*) ;
 int kv_dpm_setup_asic (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kv_dpm_resume(void *handle)
{
 int ret;
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev->pm.dpm_enabled) {

  mutex_lock(&adev->pm.mutex);
  kv_dpm_setup_asic(adev);
  ret = kv_dpm_enable(adev);
  if (ret)
   adev->pm.dpm_enabled = 0;
  else
   adev->pm.dpm_enabled = 1;
  mutex_unlock(&adev->pm.mutex);
  if (adev->pm.dpm_enabled)
   amdgpu_pm_compute_clocks(adev);
 }
 return 0;
}
