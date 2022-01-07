
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct smu_context {int dummy; } ;
struct pp_states_info {int nums; int* states; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; struct smu_context smu; } ;
typedef int ssize_t ;
typedef enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
struct TYPE_3__ {scalar_t__ get_pp_num_states; scalar_t__ get_current_power_state; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int amdgpu_dpm_get_current_power_state (struct amdgpu_device*) ;
 int amdgpu_dpm_get_pp_num_states (struct amdgpu_device*,struct pp_states_info*) ;
 struct drm_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_support_sw_smu (struct amdgpu_device*) ;
 int smu_get_current_power_state (struct smu_context*) ;
 int smu_get_power_num_states (struct smu_context*,struct pp_states_info*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t amdgpu_get_pp_cur_state(struct device *dev,
  struct device_attribute *attr,
  char *buf)
{
 struct drm_device *ddev = dev_get_drvdata(dev);
 struct amdgpu_device *adev = ddev->dev_private;
 struct pp_states_info data;
 struct smu_context *smu = &adev->smu;
 enum amd_pm_state_type pm = 0;
 int i = 0, ret = 0;

 if (is_support_sw_smu(adev)) {
  pm = smu_get_current_power_state(smu);
  ret = smu_get_power_num_states(smu, &data);
  if (ret)
   return ret;
 } else if (adev->powerplay.pp_funcs->get_current_power_state
   && adev->powerplay.pp_funcs->get_pp_num_states) {
  pm = amdgpu_dpm_get_current_power_state(adev);
  amdgpu_dpm_get_pp_num_states(adev, &data);
 }

 for (i = 0; i < data.nums; i++) {
  if (pm == data.states[i])
   break;
 }

 if (i == data.nums)
  i = -EINVAL;

 return snprintf(buf, PAGE_SIZE, "%d\n", i);
}
