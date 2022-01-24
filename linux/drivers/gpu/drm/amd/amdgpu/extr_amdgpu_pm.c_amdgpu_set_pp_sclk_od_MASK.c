#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  boot_ps; int /*<<< orphan*/  current_ps; } ;
struct TYPE_8__ {TYPE_3__ dpm; } ;
struct TYPE_6__ {TYPE_1__* pp_funcs; } ;
struct amdgpu_device {TYPE_4__ pm; TYPE_2__ powerplay; int /*<<< orphan*/  smu; } ;
typedef  size_t ssize_t ;
struct TYPE_5__ {scalar_t__ dispatch_tasks; scalar_t__ set_sclk_od; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMD_PP_TASK_READJUST_POWER_STATE ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  SMU_OD_SCLK ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*) ; 
 struct drm_device* FUNC3 (struct device*) ; 
 scalar_t__ FUNC4 (struct amdgpu_device*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ ,long*) ; 
 long FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
		struct device_attribute *attr,
		const char *buf,
		size_t count)
{
	struct drm_device *ddev = FUNC3(dev);
	struct amdgpu_device *adev = ddev->dev_private;
	int ret;
	long int value;

	ret = FUNC5(buf, 0, &value);

	if (ret) {
		count = -EINVAL;
		goto fail;
	}

	if (FUNC4(adev)) {
		value = FUNC6(&(adev->smu), SMU_OD_SCLK, (uint32_t)value);
	} else {
		if (adev->powerplay.pp_funcs->set_sclk_od)
			FUNC1(adev, (uint32_t)value);

		if (adev->powerplay.pp_funcs->dispatch_tasks) {
			FUNC0(adev, AMD_PP_TASK_READJUST_POWER_STATE, NULL);
		} else {
			adev->pm.dpm.current_ps = adev->pm.dpm.boot_ps;
			FUNC2(adev);
		}
	}

fail:
	return count;
}