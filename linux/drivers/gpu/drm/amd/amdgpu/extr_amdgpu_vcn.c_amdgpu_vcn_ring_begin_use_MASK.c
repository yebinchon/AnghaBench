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
struct dpg_pause_state {void* jpeg; void* fw_based; } ;
struct amdgpu_ring {size_t me; TYPE_3__* funcs; struct amdgpu_device* adev; } ;
struct TYPE_8__ {unsigned int num_enc_rings; int /*<<< orphan*/  (* pause_dpg_mode ) (struct amdgpu_device*,struct dpg_pause_state*) ;TYPE_2__* inst; int /*<<< orphan*/  idle_work; } ;
struct TYPE_5__ {scalar_t__ dpm_enabled; } ;
struct amdgpu_device {scalar_t__ asic_type; int pg_flags; TYPE_4__ vcn; TYPE_1__ pm; } ;
struct TYPE_7__ {scalar_t__ type; } ;
struct TYPE_6__ {int /*<<< orphan*/  ring_jpeg; int /*<<< orphan*/ * ring_enc; } ;

/* Variables and functions */
 scalar_t__ AMDGPU_RING_TYPE_VCN_ENC ; 
 scalar_t__ AMDGPU_RING_TYPE_VCN_JPEG ; 
 int /*<<< orphan*/  AMD_IP_BLOCK_TYPE_VCN ; 
 int /*<<< orphan*/  AMD_PG_STATE_UNGATE ; 
 int AMD_PG_SUPPORT_VCN_DPG ; 
 scalar_t__ CHIP_ARCTURUS ; 
 void* VCN_DPG_STATE__PAUSE ; 
 void* VCN_DPG_STATE__UNPAUSE ; 
 int /*<<< orphan*/  FUNC0 (struct amdgpu_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amdgpu_device*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct amdgpu_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct amdgpu_device*,struct dpg_pause_state*) ; 

void FUNC6(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	bool set_clocks = !FUNC4(&adev->vcn.idle_work);

	if (set_clocks) {
		FUNC3(adev, false);
		if (adev->asic_type < CHIP_ARCTURUS && adev->pm.dpm_enabled)
			FUNC1(adev, true);
		else
			FUNC0(adev, AMD_IP_BLOCK_TYPE_VCN,
							       AMD_PG_STATE_UNGATE);
	}

	if (adev->pg_flags & AMD_PG_SUPPORT_VCN_DPG)	{
		struct dpg_pause_state new_state;
		unsigned int fences = 0;
		unsigned int i;

		for (i = 0; i < adev->vcn.num_enc_rings; ++i) {
			fences += FUNC2(&adev->vcn.inst[ring->me].ring_enc[i]);
		}
		if (fences)
			new_state.fw_based = VCN_DPG_STATE__PAUSE;
		else
			new_state.fw_based = VCN_DPG_STATE__UNPAUSE;

		if (FUNC2(&adev->vcn.inst[ring->me].ring_jpeg))
			new_state.jpeg = VCN_DPG_STATE__PAUSE;
		else
			new_state.jpeg = VCN_DPG_STATE__UNPAUSE;

		if (ring->funcs->type == AMDGPU_RING_TYPE_VCN_ENC)
			new_state.fw_based = VCN_DPG_STATE__PAUSE;
		else if (ring->funcs->type == AMDGPU_RING_TYPE_VCN_JPEG)
			new_state.jpeg = VCN_DPG_STATE__PAUSE;

		adev->vcn.pause_dpg_mode(adev, &new_state);
	}
}