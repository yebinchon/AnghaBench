#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mvdd_dependency_on_mclk; int /*<<< orphan*/  vddci_dependency_on_mclk; int /*<<< orphan*/  vddc_dependency_on_mclk; } ;
struct TYPE_8__ {TYPE_1__ dyn_state; } ;
struct TYPE_9__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct TYPE_10__ {scalar_t__ count; } ;
struct ci_power_info {scalar_t__ voltage_control; scalar_t__ vddci_control; scalar_t__ mvdd_control; TYPE_4__ mvdd_voltage_table; TYPE_4__ vddci_voltage_table; TYPE_4__ vddc_voltage_table; } ;

/* Variables and functions */
 scalar_t__ CISLANDS_VOLTAGE_CONTROL_BY_GPIO ; 
 scalar_t__ CISLANDS_VOLTAGE_CONTROL_BY_SVID2 ; 
 scalar_t__ SMU7_MAX_LEVELS_MVDD ; 
 scalar_t__ SMU7_MAX_LEVELS_VDDC ; 
 scalar_t__ SMU7_MAX_LEVELS_VDDCI ; 
 int /*<<< orphan*/  VOLTAGE_OBJ_GPIO_LUT ; 
 int /*<<< orphan*/  VOLTAGE_TYPE_MVDDC ; 
 int /*<<< orphan*/  VOLTAGE_TYPE_VDDC ; 
 int /*<<< orphan*/  VOLTAGE_TYPE_VDDCI ; 
 struct ci_power_info* FUNC0 (struct radeon_device*) ; 
 int FUNC1 (struct radeon_device*,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC2 (struct radeon_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,scalar_t__,TYPE_4__*) ; 

__attribute__((used)) static int FUNC4(struct radeon_device *rdev)
{
	struct ci_power_info *pi = FUNC0(rdev);
	int ret;

	if (pi->voltage_control == CISLANDS_VOLTAGE_CONTROL_BY_GPIO) {
		ret = FUNC2(rdev, VOLTAGE_TYPE_VDDC,
						    VOLTAGE_OBJ_GPIO_LUT,
						    &pi->vddc_voltage_table);
		if (ret)
			return ret;
	} else if (pi->voltage_control == CISLANDS_VOLTAGE_CONTROL_BY_SVID2) {
		ret = FUNC1(rdev,
						&rdev->pm.dpm.dyn_state.vddc_dependency_on_mclk,
						&pi->vddc_voltage_table);
		if (ret)
			return ret;
	}

	if (pi->vddc_voltage_table.count > SMU7_MAX_LEVELS_VDDC)
		FUNC3(rdev, SMU7_MAX_LEVELS_VDDC,
							 &pi->vddc_voltage_table);

	if (pi->vddci_control == CISLANDS_VOLTAGE_CONTROL_BY_GPIO) {
		ret = FUNC2(rdev, VOLTAGE_TYPE_VDDCI,
						    VOLTAGE_OBJ_GPIO_LUT,
						    &pi->vddci_voltage_table);
		if (ret)
			return ret;
	} else if (pi->vddci_control == CISLANDS_VOLTAGE_CONTROL_BY_SVID2) {
		ret = FUNC1(rdev,
						&rdev->pm.dpm.dyn_state.vddci_dependency_on_mclk,
						&pi->vddci_voltage_table);
		if (ret)
			return ret;
	}

	if (pi->vddci_voltage_table.count > SMU7_MAX_LEVELS_VDDCI)
		FUNC3(rdev, SMU7_MAX_LEVELS_VDDCI,
							 &pi->vddci_voltage_table);

	if (pi->mvdd_control == CISLANDS_VOLTAGE_CONTROL_BY_GPIO) {
		ret = FUNC2(rdev, VOLTAGE_TYPE_MVDDC,
						    VOLTAGE_OBJ_GPIO_LUT,
						    &pi->mvdd_voltage_table);
		if (ret)
			return ret;
	} else if (pi->mvdd_control == CISLANDS_VOLTAGE_CONTROL_BY_SVID2) {
		ret = FUNC1(rdev,
						&rdev->pm.dpm.dyn_state.mvdd_dependency_on_mclk,
						&pi->mvdd_voltage_table);
		if (ret)
			return ret;
	}

	if (pi->mvdd_voltage_table.count > SMU7_MAX_LEVELS_MVDD)
		FUNC3(rdev, SMU7_MAX_LEVELS_MVDD,
							 &pi->mvdd_voltage_table);

	return 0;
}