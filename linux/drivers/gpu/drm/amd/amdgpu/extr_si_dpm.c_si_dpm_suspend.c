
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int boot_ps; int requested_ps; int current_ps; } ;
struct TYPE_4__ {int mutex; TYPE_1__ dpm; scalar_t__ dpm_enabled; } ;
struct amdgpu_device {TYPE_2__ pm; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si_dpm_disable (struct amdgpu_device*) ;

__attribute__((used)) static int si_dpm_suspend(void *handle)
{
 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (adev->pm.dpm_enabled) {
  mutex_lock(&adev->pm.mutex);

  si_dpm_disable(adev);

  adev->pm.dpm.current_ps = adev->pm.dpm.requested_ps = adev->pm.dpm.boot_ps;
  mutex_unlock(&adev->pm.mutex);
 }
 return 0;
}
