
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mutex; scalar_t__ dpm_enabled; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int kv_dpm_disable (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int kv_dpm_hw_fini(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev->pm.dpm_enabled) {
  mutex_lock(&adev->pm.mutex);
  kv_dpm_disable(adev);
  mutex_unlock(&adev->pm.mutex);
 }

 return 0;
}
