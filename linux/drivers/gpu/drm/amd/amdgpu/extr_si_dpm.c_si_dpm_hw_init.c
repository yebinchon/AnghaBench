
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dpm_enabled; int mutex; } ;
struct amdgpu_device {TYPE_1__ pm; } ;


 int amdgpu_dpm ;
 int amdgpu_pm_compute_clocks (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int si_dpm_enable (struct amdgpu_device*) ;
 int si_dpm_setup_asic (struct amdgpu_device*) ;

__attribute__((used)) static int si_dpm_hw_init(void *handle)
{
 int ret;

 struct amdgpu_device *adev = (struct amdgpu_device *)handle;

 if (!amdgpu_dpm)
  return 0;

 mutex_lock(&adev->pm.mutex);
 si_dpm_setup_asic(adev);
 ret = si_dpm_enable(adev);
 if (ret)
  adev->pm.dpm_enabled = 0;
 else
  adev->pm.dpm_enabled = 1;
 mutex_unlock(&adev->pm.mutex);
 amdgpu_pm_compute_clocks(adev);
 return ret;
}
