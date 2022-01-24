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
typedef  int uint32_t ;
struct TYPE_2__ {int harvest_config; } ;
struct amdgpu_device {int cg_flags; int /*<<< orphan*/  grbm_idx_mutex; TYPE_1__ vce; } ;
typedef  enum amd_clockgating_state { ____Placeholder_amd_clockgating_state } amd_clockgating_state ;

/* Variables and functions */
 int AMD_CG_STATE_GATE ; 
 int AMD_CG_SUPPORT_VCE_MGCG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int mmGRBM_GFX_INDEX_DEFAULT ; 
 int /*<<< orphan*/  mmVCE_CLOCK_GATING_A ; 
 int /*<<< orphan*/  mmVCE_UENC_CLOCK_GATING ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC6(void *handle,
					  enum amd_clockgating_state state)
{
	struct amdgpu_device *adev = (struct amdgpu_device *)handle;
	bool enable = (state == AMD_CG_STATE_GATE) ? true : false;
	int i;

	if (!(adev->cg_flags & AMD_CG_SUPPORT_VCE_MGCG))
		return 0;

	FUNC3(&adev->grbm_idx_mutex);
	for (i = 0; i < 2; i++) {
		/* Program VCE Instance 0 or 1 if not harvested */
		if (adev->vce.harvest_config & (1 << i))
			continue;

		FUNC2(mmGRBM_GFX_INDEX, FUNC0(i));

		if (!enable) {
			/* initialize VCE_CLOCK_GATING_A: Clock ON/OFF delay */
			uint32_t data = FUNC1(mmVCE_CLOCK_GATING_A);
			data &= ~(0xf | 0xff0);
			data |= ((0x0 << 0) | (0x04 << 4));
			FUNC2(mmVCE_CLOCK_GATING_A, data);

			/* initialize VCE_UENC_CLOCK_GATING: Clock ON/OFF delay */
			data = FUNC1(mmVCE_UENC_CLOCK_GATING);
			data &= ~(0xf | 0xff0);
			data |= ((0x0 << 0) | (0x04 << 4));
			FUNC2(mmVCE_UENC_CLOCK_GATING, data);
		}

		FUNC5(adev, enable);
	}

	FUNC2(mmGRBM_GFX_INDEX, mmGRBM_GFX_INDEX_DEFAULT);
	FUNC4(&adev->grbm_idx_mutex);

	return 0;
}