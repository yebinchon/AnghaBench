#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct smu_context {int dummy; } ;
struct pp_states_info {int nums; int* states; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_2__ powerplay; struct smu_context smu; } ;
typedef  int ssize_t ;
typedef  enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
struct TYPE_3__ {scalar_t__ get_pp_num_states; scalar_t__ get_current_power_state; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC0 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,struct pp_states_info*) ; 
 struct drm_device* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct smu_context*) ; 
 int FUNC5 (struct smu_context*,struct pp_states_info*) ; 
 int FUNC6 (char*,int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr,
		char *buf)
{
	struct drm_device *ddev = FUNC2(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	struct pp_states_info data;
	struct smu_context *smu = &adev->smu;
	enum amd_pm_state_type pm = 0;
	int i = 0, ret = 0;

	if (FUNC3(adev)) {
		pm = FUNC4(smu);
		ret = FUNC5(smu, &data);
		if (ret)
			return ret;
	} else if (adev->powerplay.pp_funcs->get_current_power_state
		 && adev->powerplay.pp_funcs->get_pp_num_states) {
		pm = FUNC0(adev);
		FUNC1(adev, &data);
	}

	for (i = 0; i < data.nums; i++) {
		if (pm == data.states[i])
			break;
	}

	if (i == data.nums)
		i = -EINVAL;

	return FUNC6(buf, PAGE_SIZE, "%d\n", i);
}