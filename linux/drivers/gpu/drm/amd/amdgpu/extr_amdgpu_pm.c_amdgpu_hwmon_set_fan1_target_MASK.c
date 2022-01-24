#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* pp_funcs; } ;
struct amdgpu_device {int flags; TYPE_3__ powerplay; int /*<<< orphan*/  smu; TYPE_1__* ddev; } ;
typedef  int ssize_t ;
struct TYPE_5__ {scalar_t__ set_fan_speed_rpm; } ;
struct TYPE_4__ {scalar_t__ switch_power_state; } ;

/* Variables and functions */
 scalar_t__ AMD_FAN_CTRL_MANUAL ; 
 int AMD_IS_PX ; 
 scalar_t__ DRM_SWITCH_POWER_ON ; 
 int EINVAL ; 
 int ENODATA ; 
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 int FUNC1 (struct amdgpu_device*,scalar_t__) ; 
 struct amdgpu_device* FUNC2 (struct device*) ; 
 scalar_t__ FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (char const*,int,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC7(struct device *dev,
				     struct device_attribute *attr,
				     const char *buf, size_t count)
{
	struct amdgpu_device *adev = FUNC2(dev);
	int err;
	u32 value;
	u32 pwm_mode;

	if (FUNC3(adev))
		pwm_mode = FUNC5(&adev->smu);
	else
		pwm_mode = FUNC0(adev);

	if (pwm_mode != AMD_FAN_CTRL_MANUAL)
		return -ENODATA;

	/* Can't adjust fan when the card is off */
	if  ((adev->flags & AMD_IS_PX) &&
	     (adev->ddev->switch_power_state != DRM_SWITCH_POWER_ON))
		return -EINVAL;

	err = FUNC4(buf, 10, &value);
	if (err)
		return err;

	if (FUNC3(adev)) {
		err = FUNC6(&adev->smu, value);
		if (err)
			return err;
	} else if (adev->powerplay.pp_funcs->set_fan_speed_rpm) {
		err = FUNC1(adev, value);
		if (err)
			return err;
	}

	return count;
}