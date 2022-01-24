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
 scalar_t__ FUNC0 (struct amdgpu_device*) ; 
 scalar_t__ FUNC1 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  dev_attr_power_dpm_force_performance_level ; 
 int /*<<< orphan*/  dev_attr_pp_dpm_mclk ; 
 int /*<<< orphan*/  dev_attr_pp_dpm_sclk ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC3(struct amdgpu_device *adev)
{
	if (!(FUNC1(adev) && FUNC0(adev)))
		return;

	FUNC2(adev->dev, &dev_attr_power_dpm_force_performance_level);
	FUNC2(adev->dev, &dev_attr_pp_dpm_sclk);
	FUNC2(adev->dev, &dev_attr_pp_dpm_mclk);
}