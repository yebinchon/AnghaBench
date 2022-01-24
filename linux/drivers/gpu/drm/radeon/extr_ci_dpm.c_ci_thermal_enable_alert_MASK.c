#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int dpm_thermal; } ;
struct radeon_device {TYPE_1__ irq; } ;
typedef  scalar_t__ PPSMC_Result ;

/* Variables and functions */
 int /*<<< orphan*/  CG_THERMAL_INT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  PPSMC_MSG_Thermal_Cntl_Disable ; 
 int /*<<< orphan*/  PPSMC_MSG_Thermal_Cntl_Enable ; 
 scalar_t__ PPSMC_Result_OK ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int THERM_INT_MASK_HIGH ; 
 int THERM_INT_MASK_LOW ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct radeon_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev,
				   bool enable)
{
	u32 thermal_int = FUNC1(CG_THERMAL_INT);
	PPSMC_Result result;

	if (enable) {
		thermal_int &= ~(THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW);
		FUNC2(CG_THERMAL_INT, thermal_int);
		rdev->irq.dpm_thermal = false;
		result = FUNC3(rdev, PPSMC_MSG_Thermal_Cntl_Enable);
		if (result != PPSMC_Result_OK) {
			FUNC0("Could not enable thermal interrupts.\n");
			return -EINVAL;
		}
	} else {
		thermal_int |= THERM_INT_MASK_HIGH | THERM_INT_MASK_LOW;
		FUNC2(CG_THERMAL_INT, thermal_int);
		rdev->irq.dpm_thermal = true;
		result = FUNC3(rdev, PPSMC_MSG_Thermal_Cntl_Disable);
		if (result != PPSMC_Result_OK) {
			FUNC0("Could not disable thermal interrupts.\n");
			return -EINVAL;
		}
	}

	return 0;
}