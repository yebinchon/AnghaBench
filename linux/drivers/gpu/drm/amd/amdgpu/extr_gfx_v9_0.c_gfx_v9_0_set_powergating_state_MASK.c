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
struct TYPE_2__ {int /*<<< orphan*/  gfx_off_delay_work; } ;
struct amdgpu_device {int asic_type; int pg_flags; TYPE_1__ gfx; int /*<<< orphan*/  smu; } ;
typedef  enum amd_powergating_state { ____Placeholder_amd_powergating_state } amd_powergating_state ;

/* Variables and functions */
 int AMD_PG_STATE_GATE ; 
 int AMD_PG_SUPPORT_CP ; 
 int AMD_PG_SUPPORT_RLC_SMU_HS ; 
#define  CHIP_RAVEN 130 
#define  CHIP_RENOIR 129 
#define  CHIP_VEGA12 128 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(void *handle,
					  enum amd_powergating_state state)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	bool enable = (state == AMD_PG_STATE_GATE) ? true : false;

	switch (adev->asic_type) {
	case CHIP_RAVEN:
	case CHIP_RENOIR:
		if (!enable) {
			FUNC0(adev, false);
			FUNC1(&adev->gfx.gfx_off_delay_work);
		}
		if (adev->pg_flags & AMD_PG_SUPPORT_RLC_SMU_HS) {
			FUNC4(adev, true);
			FUNC3(adev, true);
		} else {
			FUNC4(adev, false);
			FUNC3(adev, false);
		}

		if (adev->pg_flags & AMD_PG_SUPPORT_CP)
			FUNC2(adev, true);
		else
			FUNC2(adev, false);

		/* update gfx cgpg state */
		if (FUNC7(adev) && enable)
			FUNC8(&adev->smu, enable);
		FUNC5(adev, enable);

		/* update mgcg state */
		FUNC6(adev, enable);

		if (enable)
			FUNC0(adev, true);
		break;
	case CHIP_VEGA12:
		if (!enable) {
			FUNC0(adev, false);
			FUNC1(&adev->gfx.gfx_off_delay_work);
		} else {
			FUNC0(adev, true);
		}
		break;
	default:
		break;
	}

	return 0;
}