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
struct TYPE_8__ {size_t current_power_state_index; size_t default_power_state_index; scalar_t__ pm_method; scalar_t__ dynpm_state; int /*<<< orphan*/  mutex; int /*<<< orphan*/  dynpm_idle_work; TYPE_3__* power_state; int /*<<< orphan*/  current_vddci; int /*<<< orphan*/  current_vddc; scalar_t__ default_mclk; scalar_t__ current_mclk; scalar_t__ default_sclk; scalar_t__ current_sclk; scalar_t__ current_clock_mode_index; scalar_t__ default_vddci; scalar_t__ default_vddc; } ;
struct radeon_device {scalar_t__ family; TYPE_4__ pm; scalar_t__ mc_fw; } ;
struct TYPE_7__ {TYPE_2__* clock_info; } ;
struct TYPE_5__ {int /*<<< orphan*/  vddci; int /*<<< orphan*/  voltage; } ;
struct TYPE_6__ {TYPE_1__ voltage; } ;

/* Variables and functions */
 scalar_t__ CHIP_BARTS ; 
 scalar_t__ CHIP_CAYMAN ; 
 scalar_t__ DYNPM_STATE_ACTIVE ; 
 scalar_t__ DYNPM_STATE_SUSPENDED ; 
 scalar_t__ PM_METHOD_DYNPM ; 
 int /*<<< orphan*/  RADEON_IDLE_LOOP_MS ; 
 int /*<<< orphan*/  SET_VOLTAGE_TYPE_ASIC_VDDC ; 
 int /*<<< orphan*/  SET_VOLTAGE_TYPE_ASIC_VDDCI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct radeon_device *rdev)
{
	/* set up the default clocks if the MC ucode is loaded */
	if ((rdev->family >= CHIP_BARTS) &&
	    (rdev->family <= CHIP_CAYMAN) &&
	    rdev->mc_fw) {
		if (rdev->pm.default_vddc)
			FUNC3(rdev, rdev->pm.default_vddc,
						SET_VOLTAGE_TYPE_ASIC_VDDC);
		if (rdev->pm.default_vddci)
			FUNC3(rdev, rdev->pm.default_vddci,
						SET_VOLTAGE_TYPE_ASIC_VDDCI);
		if (rdev->pm.default_sclk)
			FUNC5(rdev, rdev->pm.default_sclk);
		if (rdev->pm.default_mclk)
			FUNC6(rdev, rdev->pm.default_mclk);
	}
	/* asic init will reset the default power state */
	FUNC1(&rdev->pm.mutex);
	rdev->pm.current_power_state_index = rdev->pm.default_power_state_index;
	rdev->pm.current_clock_mode_index = 0;
	rdev->pm.current_sclk = rdev->pm.default_sclk;
	rdev->pm.current_mclk = rdev->pm.default_mclk;
	if (rdev->pm.power_state) {
		rdev->pm.current_vddc = rdev->pm.power_state[rdev->pm.default_power_state_index].clock_info[0].voltage.voltage;
		rdev->pm.current_vddci = rdev->pm.power_state[rdev->pm.default_power_state_index].clock_info[0].voltage.vddci;
	}
	if (rdev->pm.pm_method == PM_METHOD_DYNPM
	    && rdev->pm.dynpm_state == DYNPM_STATE_SUSPENDED) {
		rdev->pm.dynpm_state = DYNPM_STATE_ACTIVE;
		FUNC7(&rdev->pm.dynpm_idle_work,
				      FUNC0(RADEON_IDLE_LOOP_MS));
	}
	FUNC2(&rdev->pm.mutex);
	FUNC4(rdev);
}