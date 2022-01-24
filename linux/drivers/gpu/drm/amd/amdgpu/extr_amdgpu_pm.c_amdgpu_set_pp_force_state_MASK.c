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
struct pp_states_info {int* states; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {int pp_force_state_enabled; TYPE_2__ powerplay; } ;
typedef  size_t ssize_t ;
typedef  enum amd_pm_state_type { ____Placeholder_amd_pm_state_type } amd_pm_state_type ;
struct TYPE_3__ {scalar_t__ get_pp_num_states; scalar_t__ dispatch_tasks; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_PP_TASK_ENABLE_USER_STATE ; 
 unsigned long FUNC0 (int*) ; 
 size_t EINVAL ; 
 int POWER_STATE_TYPE_DEFAULT ; 
 int POWER_STATE_TYPE_INTERNAL_BOOT ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,struct pp_states_info*) ; 
 unsigned long FUNC3 (unsigned long,unsigned long) ; 
 struct drm_device* FUNC4 (struct device*) ; 
 scalar_t__ FUNC5 (struct amdgpu_device*) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 int FUNC7 (char const*) ; 

__attribute__((used)) static ssize_t FUNC8(struct device *dev,
		struct device_attribute *attr,
		const char *buf,
		size_t count)
{
	struct drm_device *ddev = FUNC4(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	enum amd_pm_state_type state = 0;
	unsigned long idx;
	int ret;

	if (FUNC7(buf) == 1)
		adev->pp_force_state_enabled = false;
	else if (FUNC5(adev))
		adev->pp_force_state_enabled = false;
	else if (adev->powerplay.pp_funcs->dispatch_tasks &&
			adev->powerplay.pp_funcs->get_pp_num_states) {
		struct pp_states_info data;

		ret = FUNC6(buf, 0, &idx);
		if (ret || idx >= FUNC0(data.states)) {
			count = -EINVAL;
			goto fail;
		}
		idx = FUNC3(idx, FUNC0(data.states));

		FUNC2(adev, &data);
		state = data.states[idx];
		/* only set user selected power states */
		if (state != POWER_STATE_TYPE_INTERNAL_BOOT &&
		    state != POWER_STATE_TYPE_DEFAULT) {
			FUNC1(adev,
					AMD_PP_TASK_ENABLE_USER_STATE, &state);
			adev->pp_force_state_enabled = true;
		}
	}
fail:
	return count;
}