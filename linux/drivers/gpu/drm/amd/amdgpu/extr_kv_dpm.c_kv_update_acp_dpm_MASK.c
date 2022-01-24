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
struct kv_power_info {int acp_boot_level; scalar_t__ caps_stable_p_state; int /*<<< orphan*/  sram_end; scalar_t__ dpm_table_start; } ;
struct amdgpu_clock_voltage_dependency_table {int count; } ;
struct TYPE_4__ {struct amdgpu_clock_voltage_dependency_table acp_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  AcpBootLevel ; 
 int /*<<< orphan*/  PPSMC_MSG_ACPDPM_SetEnabledMask ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 int FUNC0 (struct amdgpu_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct amdgpu_device*,int) ; 
 int FUNC3 (struct amdgpu_device*) ; 
 struct kv_power_info* FUNC4 (struct amdgpu_device*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev, bool gate)
{
	struct kv_power_info *pi = FUNC4(adev);
	struct amdgpu_clock_voltage_dependency_table *table =
		&adev->pm.dpm.dyn_state.acp_clock_voltage_dependency_table;
	int ret;

	if (!gate) {
		if (pi->caps_stable_p_state)
			pi->acp_boot_level = table->count - 1;
		else
			pi->acp_boot_level = FUNC3(adev);

		ret = FUNC0(adev,
					   pi->dpm_table_start +
					   FUNC5(SMU7_Fusion_DpmTable, AcpBootLevel),
					   (u8 *)&pi->acp_boot_level,
					   sizeof(u8),
					   pi->sram_end);
		if (ret)
			return ret;

		if (pi->caps_stable_p_state)
			FUNC1(adev,
							  PPSMC_MSG_ACPDPM_SetEnabledMask,
							  (1 << pi->acp_boot_level));
	}

	return FUNC2(adev, !gate);
}