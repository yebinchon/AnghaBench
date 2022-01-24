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
struct radeon_clock_voltage_dependency_table {int count; } ;
struct TYPE_4__ {struct radeon_clock_voltage_dependency_table acp_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct radeon_device {TYPE_3__ pm; } ;
struct kv_power_info {int acp_boot_level; scalar_t__ caps_stable_p_state; int /*<<< orphan*/  sram_end; scalar_t__ dpm_table_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  AcpBootLevel ; 
 int /*<<< orphan*/  PPSMC_MSG_ACPDPM_SetEnabledMask ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 int FUNC0 (struct radeon_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct radeon_device*,int) ; 
 int FUNC2 (struct radeon_device*) ; 
 struct kv_power_info* FUNC3 (struct radeon_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct radeon_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct radeon_device *rdev, bool gate)
{
	struct kv_power_info *pi = FUNC3(rdev);
	struct radeon_clock_voltage_dependency_table *table =
		&rdev->pm.dpm.dyn_state.acp_clock_voltage_dependency_table;
	int ret;

	if (!gate) {
		if (pi->caps_stable_p_state)
			pi->acp_boot_level = table->count - 1;
		else
			pi->acp_boot_level = FUNC2(rdev);

		ret = FUNC0(rdev,
					   pi->dpm_table_start +
					   FUNC5(SMU7_Fusion_DpmTable, AcpBootLevel),
					   (u8 *)&pi->acp_boot_level,
					   sizeof(u8),
					   pi->sram_end);
		if (ret)
			return ret;

		if (pi->caps_stable_p_state)
			FUNC4(rdev,
							  PPSMC_MSG_ACPDPM_SetEnabledMask,
							  (1 << pi->acp_boot_level));
	}

	return FUNC1(rdev, !gate);
}