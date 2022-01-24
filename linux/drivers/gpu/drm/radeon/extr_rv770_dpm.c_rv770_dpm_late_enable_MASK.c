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
struct TYPE_4__ {int dpm_thermal; scalar_t__ installed; } ;
struct TYPE_3__ {int /*<<< orphan*/  int_thermal_type; } ;
struct radeon_device {TYPE_2__ irq; TYPE_1__ pm; } ;
typedef  scalar_t__ PPSMC_Result ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PPSMC_MSG_EnableThermalInterrupt ; 
 scalar_t__ PPSMC_Result_OK ; 
 int /*<<< orphan*/  R600_TEMP_RANGE_MAX ; 
 int /*<<< orphan*/  R600_TEMP_RANGE_MIN ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*) ; 
 scalar_t__ FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct radeon_device *rdev)
{
	int ret;

	if (rdev->irq.installed &&
	    FUNC1(rdev->pm.int_thermal_type)) {
		PPSMC_Result result;

		ret = FUNC4(rdev, R600_TEMP_RANGE_MIN, R600_TEMP_RANGE_MAX);
		if (ret)
			return ret;
		rdev->irq.dpm_thermal = true;
		FUNC2(rdev);
		result = FUNC3(rdev, PPSMC_MSG_EnableThermalInterrupt);

		if (result != PPSMC_Result_OK)
			FUNC0("Could not enable thermal interrupts.\n");
	}

	return 0;
}