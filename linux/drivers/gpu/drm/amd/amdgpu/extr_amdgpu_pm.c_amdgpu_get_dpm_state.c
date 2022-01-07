
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_11__ {int user_state; } ;
struct TYPE_12__ {TYPE_5__ dpm; } ;
struct TYPE_10__ {TYPE_3__* pp_funcs; } ;
struct TYPE_8__ {TYPE_1__* ppt_funcs; } ;
struct amdgpu_device {TYPE_6__ pm; TYPE_4__ powerplay; TYPE_2__ smu; } ;
typedef int ssize_t ;
typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
struct TYPE_9__ {scalar_t__ get_current_power_state; } ;
struct TYPE_7__ {scalar_t__ get_current_power_state; } ;


 int PAGE_SIZE ;
 int POWER_STATE_TYPE_BALANCED ;
 int POWER_STATE_TYPE_BATTERY ;
 int amdgpu_dpm_get_current_power_state (struct amdgpu_device*) ;
 int amdgpu_smu_get_current_power_state (struct amdgpu_device*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int snprintf (char*,int ,char*,char*) ;

__attribute__((used)) static ssize_t amdgpu_get_dpm_state(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 enum amd_pm_state_type pm;

 if (is_support_sw_smu(adev)) {
  if (adev->smu.ppt_funcs->get_current_power_state)
   pm = amdgpu_smu_get_current_power_state(adev);
  else
   pm = adev->pm.dpm.user_state;
 } else if (adev->powerplay.pp_funcs->get_current_power_state) {
  pm = amdgpu_dpm_get_current_power_state(adev);
 } else {
  pm = adev->pm.dpm.user_state;
 }

 return snprintf(buf, PAGE_SIZE, "%s\n",
   (pm == POWER_STATE_TYPE_BATTERY) ? "battery" :
   (pm == POWER_STATE_TYPE_BALANCED) ? "balanced" : "performance");
}
