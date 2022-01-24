#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct amdgpu_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 scalar_t__ FUNC2 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  dev_attr_power_dpm_force_performance_level ; 
 int /*<<< orphan*/  dev_attr_pp_dpm_mclk ; 
 int /*<<< orphan*/  dev_attr_pp_dpm_sclk ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC4(struct amdgpu_device *adev)
{
	int ret = 0;

	if (!(FUNC2(adev) && FUNC1(adev)))
		return ret;

	ret = FUNC3(adev->dev, &dev_attr_pp_dpm_sclk);
	if (ret) {
		FUNC0("failed to create device file pp_dpm_sclk\n");
		return ret;
	}

	ret = FUNC3(adev->dev, &dev_attr_pp_dpm_mclk);
	if (ret) {
		FUNC0("failed to create device file pp_dpm_mclk\n");
		return ret;
	}

	ret = FUNC3(adev->dev, &dev_attr_power_dpm_force_performance_level);
	if (ret) {
		FUNC0("failed to create device file for dpm state\n");
		return ret;
	}

	return ret;
}