
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_device {scalar_t__ switch_power_state; struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int user_state; } ;
struct TYPE_8__ {int mutex; TYPE_3__ dpm; } ;
struct TYPE_6__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {int flags; TYPE_4__ pm; TYPE_2__ powerplay; } ;
typedef size_t ssize_t ;
typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
struct TYPE_5__ {scalar_t__ dispatch_tasks; } ;


 int AMD_IS_PX ;
 int AMD_PP_TASK_ENABLE_USER_STATE ;
 scalar_t__ DRM_SWITCH_POWER_ON ;
 size_t EINVAL ;
 int POWER_STATE_TYPE_BALANCED ;
 int POWER_STATE_TYPE_BATTERY ;
 int POWER_STATE_TYPE_PERFORMANCE ;
 int amdgpu_dpm_dispatch_task (struct amdgpu_device*,int ,int*) ;
 int amdgpu_pm_compute_clocks (struct amdgpu_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static ssize_t amdgpu_set_dpm_state(struct device *dev,
        struct device_attribute *attr,
        const char *buf,
        size_t count)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 enum amd_pm_state_type state;

 if (strncmp("battery", buf, strlen("battery")) == 0)
  state = POWER_STATE_TYPE_BATTERY;
 else if (strncmp("balanced", buf, strlen("balanced")) == 0)
  state = POWER_STATE_TYPE_BALANCED;
 else if (strncmp("performance", buf, strlen("performance")) == 0)
  state = POWER_STATE_TYPE_PERFORMANCE;
 else {
  count = -EINVAL;
  goto fail;
 }

 if (is_support_sw_smu(adev)) {
  mutex_lock(&adev->pm.mutex);
  adev->pm.dpm.user_state = state;
  mutex_unlock(&adev->pm.mutex);
 } else if (adev->powerplay.pp_funcs->dispatch_tasks) {
  amdgpu_dpm_dispatch_task(adev, AMD_PP_TASK_ENABLE_USER_STATE, &state);
 } else {
  mutex_lock(&adev->pm.mutex);
  adev->pm.dpm.user_state = state;
  mutex_unlock(&adev->pm.mutex);


  if (!(adev->flags & AMD_IS_PX) ||
      (ddev->switch_power_state == DRM_SWITCH_POWER_ON))
   amdgpu_pm_compute_clocks(adev);
 }
fail:
 return count;
}
