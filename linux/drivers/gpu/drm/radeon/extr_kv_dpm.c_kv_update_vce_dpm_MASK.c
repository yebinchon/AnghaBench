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
typedef  int /*<<< orphan*/  u8 ;
struct radeon_vce_clock_voltage_dependency_table {int count; } ;
struct radeon_ps {scalar_t__ evclk; } ;
struct TYPE_4__ {struct radeon_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct kv_power_info {int vce_boot_level; scalar_t__ caps_stable_p_state; int /*<<< orphan*/  sram_end; scalar_t__ dpm_table_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_VCEDPM_SetEnabledMask ; 
 int /*<<< orphan*/  RADEON_CG_BLOCK_VCE ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 int /*<<< orphan*/  VceBootLevel ; 
 int /*<<< orphan*/  FUNC0 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct radeon_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct radeon_device*,int) ; 
 struct kv_power_info* FUNC4 (struct radeon_device*) ; 
 int FUNC5 (struct radeon_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct radeon_device *rdev,
			     struct radeon_ps *radeon_new_state,
			     struct radeon_ps *radeon_current_state)
{
	struct kv_power_info *pi = FUNC4(rdev);
	struct radeon_vce_clock_voltage_dependency_table *table =
		&rdev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;
	int ret;

	if (radeon_new_state->evclk > 0 && radeon_current_state->evclk == 0) {
		FUNC2(rdev, false);
		/* turn the clocks on when encoding */
		FUNC0(rdev, RADEON_CG_BLOCK_VCE, false);
		if (pi->caps_stable_p_state)
			pi->vce_boot_level = table->count - 1;
		else
			pi->vce_boot_level = FUNC5(rdev, radeon_new_state->evclk);

		ret = FUNC1(rdev,
					   pi->dpm_table_start +
					   FUNC7(SMU7_Fusion_DpmTable, VceBootLevel),
					   (u8 *)&pi->vce_boot_level,
					   sizeof(u8),
					   pi->sram_end);
		if (ret)
			return ret;

		if (pi->caps_stable_p_state)
			FUNC6(rdev,
							  PPSMC_MSG_VCEDPM_SetEnabledMask,
							  (1 << pi->vce_boot_level));

		FUNC3(rdev, true);
	} else if (radeon_new_state->evclk == 0 && radeon_current_state->evclk > 0) {
		FUNC3(rdev, false);
		/* turn the clocks off when not encoding */
		FUNC0(rdev, RADEON_CG_BLOCK_VCE, true);
		FUNC2(rdev, true);
	}

	return 0;
}