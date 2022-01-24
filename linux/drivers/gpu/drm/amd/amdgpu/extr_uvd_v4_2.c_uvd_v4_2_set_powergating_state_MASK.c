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
struct TYPE_2__ {int /*<<< orphan*/  dpm_enabled; } ;
struct amdgpu_device {int pg_flags; TYPE_1__ pm; } ;
typedef  enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;

/* Variables and functions */
 int AMD_PG_STATE_GATE ; 
 int AMD_PG_SUPPORT_UVD ; 
 int CURRENT_PG_STATUS__UVD_PG_STATUS_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int UVD_PGFSM_CONFIG__UVD_PGFSM_FSM_ADDR_MASK ; 
 int UVD_PGFSM_CONFIG__UVD_PGFSM_P1_SELECT_MASK ; 
 int UVD_PGFSM_CONFIG__UVD_PGFSM_POWER_DOWN_MASK ; 
 int UVD_PGFSM_CONFIG__UVD_PGFSM_POWER_UP_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ixCURRENT_PG_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  mmUVD_PGFSM_CONFIG ; 
 int FUNC3 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC5(void *handle,
					  enum amd_powergating_state state)
{
	/* This doesn't actually powergate the UVD block.
	 * That's done in the dpm code via the SMC.  This
	 * just re-inits the block as necessary.  The actual
	 * gating still happens in the dpm code.  We should
	 * revisit this when there is a cleaner line between
	 * the smc and the hw blocks
	 */
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;

	if (state == AMD_PG_STATE_GATE) {
		FUNC4(adev);
		if (adev->pg_flags & AMD_PG_SUPPORT_UVD && !adev->pm.dpm_enabled) {
			if (!(FUNC0(ixCURRENT_PG_STATUS) &
				CURRENT_PG_STATUS__UVD_PG_STATUS_MASK)) {
				FUNC1(mmUVD_PGFSM_CONFIG, (UVD_PGFSM_CONFIG__UVD_PGFSM_FSM_ADDR_MASK   |
							UVD_PGFSM_CONFIG__UVD_PGFSM_POWER_DOWN_MASK |
							UVD_PGFSM_CONFIG__UVD_PGFSM_P1_SELECT_MASK));
				FUNC2(20);
			}
		}
		return 0;
	} else {
		if (adev->pg_flags & AMD_PG_SUPPORT_UVD && !adev->pm.dpm_enabled) {
			if (FUNC0(ixCURRENT_PG_STATUS) &
				CURRENT_PG_STATUS__UVD_PG_STATUS_MASK) {
				FUNC1(mmUVD_PGFSM_CONFIG, (UVD_PGFSM_CONFIG__UVD_PGFSM_FSM_ADDR_MASK   |
						UVD_PGFSM_CONFIG__UVD_PGFSM_POWER_UP_MASK |
						UVD_PGFSM_CONFIG__UVD_PGFSM_P1_SELECT_MASK));
				FUNC2(30);
			}
		}
		return FUNC3(adev);
	}
}