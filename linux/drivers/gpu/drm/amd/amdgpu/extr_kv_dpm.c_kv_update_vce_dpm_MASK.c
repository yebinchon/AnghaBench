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
struct kv_power_info {int vce_boot_level; scalar_t__ caps_stable_p_state; int /*<<< orphan*/  sram_end; scalar_t__ dpm_table_start; } ;
struct amdgpu_vce_clock_voltage_dependency_table {int count; } ;
struct amdgpu_ps {scalar_t__ evclk; } ;
struct TYPE_4__ {struct amdgpu_vce_clock_voltage_dependency_table vce_clock_voltage_dependency_table; } ;
struct TYPE_5__ {TYPE_1__ dyn_state; } ;
struct TYPE_6__ {TYPE_2__ dpm; } ;
struct amdgpu_device {TYPE_3__ pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  PPSMC_MSG_VCEDPM_SetEnabledMask ; 
 int /*<<< orphan*/  SMU7_Fusion_DpmTable ; 
 int /*<<< orphan*/  VceBootLevel ; 
 int FUNC0 (struct amdgpu_device*,scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 struct kv_power_info* FUNC3 (struct amdgpu_device*) ; 
 int FUNC4 (struct amdgpu_device*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev,
			     struct amdgpu_ps *amdgpu_new_state,
			     struct amdgpu_ps *amdgpu_current_state)
{
	struct kv_power_info *pi = FUNC3(adev);
	struct amdgpu_vce_clock_voltage_dependency_table *table =
		&adev->pm.dpm.dyn_state.vce_clock_voltage_dependency_table;
	int ret;

	if (amdgpu_new_state->evclk > 0 && amdgpu_current_state->evclk == 0) {
		if (pi->caps_stable_p_state)
			pi->vce_boot_level = table->count - 1;
		else
			pi->vce_boot_level = FUNC4(adev, amdgpu_new_state->evclk);

		ret = FUNC0(adev,
					   pi->dpm_table_start +
					   FUNC5(SMU7_Fusion_DpmTable, VceBootLevel),
					   (u8 *)&pi->vce_boot_level,
					   sizeof(u8),
					   pi->sram_end);
		if (ret)
			return ret;

		if (pi->caps_stable_p_state)
			FUNC1(adev,
							  PPSMC_MSG_VCEDPM_SetEnabledMask,
							  (1 << pi->vce_boot_level));
		FUNC2(adev, true);
	} else if (amdgpu_new_state->evclk == 0 && amdgpu_current_state->evclk > 0) {
		FUNC2(adev, false);
	}

	return 0;
}