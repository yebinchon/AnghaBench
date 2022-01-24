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
typedef  int uint32_t ;
struct dpg_pause_state {scalar_t__ fw_based; scalar_t__ jpeg; } ;
struct amdgpu_ring {int gpu_addr; int ring_size; int wptr; } ;
struct TYPE_4__ {scalar_t__ fw_based; scalar_t__ jpeg; } ;
struct TYPE_6__ {TYPE_1__ pause_state; TYPE_2__* inst; } ;
struct amdgpu_device {TYPE_3__ vcn; } ;
struct TYPE_5__ {struct amdgpu_ring ring_dec; struct amdgpu_ring ring_jpeg; struct amdgpu_ring* ring_enc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  UVD ; 
 int UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK ; 
 int UVD_DPG_PAUSE__JPEG_PAUSE_DPG_REQ_MASK ; 
 int UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK ; 
 int UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK ; 
 int UVD_JRBC_RB_CNTL__RB_NO_FETCH_MASK ; 
 int UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK ; 
 int UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON ; 
 int UVD_POWER_STATUS__JRBC_SNOOP_DIS_MASK ; 
 int UVD_POWER_STATUS__UVD_POWER_STATUS_MASK ; 
 int UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF ; 
 scalar_t__ VCN_DPG_STATE__PAUSE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  mmUVD_DPG_PAUSE ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_CNTL ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_RPTR ; 
 int /*<<< orphan*/  mmUVD_JRBC_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW ; 
 int /*<<< orphan*/  mmUVD_LMI_JRBC_RB_VMID ; 
 int /*<<< orphan*/  mmUVD_POWER_STATUS ; 
 int /*<<< orphan*/  mmUVD_RBC_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_RB_BASE_HI ; 
 int /*<<< orphan*/  mmUVD_RB_BASE_HI2 ; 
 int /*<<< orphan*/  mmUVD_RB_BASE_LO ; 
 int /*<<< orphan*/  mmUVD_RB_BASE_LO2 ; 
 int /*<<< orphan*/  mmUVD_RB_RPTR ; 
 int /*<<< orphan*/  mmUVD_RB_RPTR2 ; 
 int /*<<< orphan*/  mmUVD_RB_SIZE ; 
 int /*<<< orphan*/  mmUVD_RB_SIZE2 ; 
 int /*<<< orphan*/  mmUVD_RB_WPTR ; 
 int /*<<< orphan*/  mmUVD_RB_WPTR2 ; 
 int /*<<< orphan*/  mmUVD_SCRATCH2 ; 
 int FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct amdgpu_device *adev,
				struct dpg_pause_state *new_state)
{
	int ret_code;
	uint32_t reg_data = 0;
	uint32_t reg_data2 = 0;
	struct amdgpu_ring *ring;

	/* pause/unpause if state is changed */
	if (adev->vcn.pause_state.fw_based != new_state->fw_based) {
		FUNC0("dpg pause state changed %d:%d -> %d:%d",
			adev->vcn.pause_state.fw_based, adev->vcn.pause_state.jpeg,
			new_state->fw_based, new_state->jpeg);

		reg_data = FUNC1(UVD, 0, mmUVD_DPG_PAUSE) &
			(~UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK);

		if (new_state->fw_based == VCN_DPG_STATE__PAUSE) {
			ret_code = 0;

			if (!(reg_data & UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK))
				FUNC2(UVD, 0, mmUVD_POWER_STATUS,
						   UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF,
						   UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, ret_code);

			if (!ret_code) {
				/* pause DPG non-jpeg */
				reg_data |= UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK;
				FUNC3(UVD, 0, mmUVD_DPG_PAUSE, reg_data);
				FUNC2(UVD, 0, mmUVD_DPG_PAUSE,
						   UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK,
						   UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK, ret_code);

				/* Restore */
				ring = &adev->vcn.inst->ring_enc[0];
				FUNC3(UVD, 0, mmUVD_RB_BASE_LO, ring->gpu_addr);
				FUNC3(UVD, 0, mmUVD_RB_BASE_HI, FUNC5(ring->gpu_addr));
				FUNC3(UVD, 0, mmUVD_RB_SIZE, ring->ring_size / 4);
				FUNC3(UVD, 0, mmUVD_RB_RPTR, FUNC4(ring->wptr));
				FUNC3(UVD, 0, mmUVD_RB_WPTR, FUNC4(ring->wptr));

				ring = &adev->vcn.inst->ring_enc[1];
				FUNC3(UVD, 0, mmUVD_RB_BASE_LO2, ring->gpu_addr);
				FUNC3(UVD, 0, mmUVD_RB_BASE_HI2, FUNC5(ring->gpu_addr));
				FUNC3(UVD, 0, mmUVD_RB_SIZE2, ring->ring_size / 4);
				FUNC3(UVD, 0, mmUVD_RB_RPTR2, FUNC4(ring->wptr));
				FUNC3(UVD, 0, mmUVD_RB_WPTR2, FUNC4(ring->wptr));

				ring = &adev->vcn.inst->ring_dec;
				FUNC3(UVD, 0, mmUVD_RBC_RB_WPTR,
						   FUNC1(UVD, 0, mmUVD_SCRATCH2) & 0x7FFFFFFF);
				FUNC2(UVD, 0, mmUVD_POWER_STATUS,
						   UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON,
						   UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, ret_code);
			}
		} else {
			/* unpause dpg non-jpeg, no need to wait */
			reg_data &= ~UVD_DPG_PAUSE__NJ_PAUSE_DPG_REQ_MASK;
			FUNC3(UVD, 0, mmUVD_DPG_PAUSE, reg_data);
		}
		adev->vcn.pause_state.fw_based = new_state->fw_based;
	}

	/* pause/unpause if state is changed */
	if (adev->vcn.pause_state.jpeg != new_state->jpeg) {
		FUNC0("dpg pause state changed %d:%d -> %d:%d",
			adev->vcn.pause_state.fw_based, adev->vcn.pause_state.jpeg,
			new_state->fw_based, new_state->jpeg);

		reg_data = FUNC1(UVD, 0, mmUVD_DPG_PAUSE) &
			(~UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK);

		if (new_state->jpeg == VCN_DPG_STATE__PAUSE) {
			ret_code = 0;

			if (!(reg_data & UVD_DPG_PAUSE__NJ_PAUSE_DPG_ACK_MASK))
				FUNC2(UVD, 0, mmUVD_POWER_STATUS,
						   UVD_POWER_STATUS__UVD_POWER_STATUS_TILES_OFF,
						   UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, ret_code);

			if (!ret_code) {
				/* Make sure JPRG Snoop is disabled before sending the pause */
				reg_data2 = FUNC1(UVD, 0, mmUVD_POWER_STATUS);
				reg_data2 |= UVD_POWER_STATUS__JRBC_SNOOP_DIS_MASK;
				FUNC3(UVD, 0, mmUVD_POWER_STATUS, reg_data2);

				/* pause DPG jpeg */
				reg_data |= UVD_DPG_PAUSE__JPEG_PAUSE_DPG_REQ_MASK;
				FUNC3(UVD, 0, mmUVD_DPG_PAUSE, reg_data);
				FUNC2(UVD, 0, mmUVD_DPG_PAUSE,
							UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK,
							UVD_DPG_PAUSE__JPEG_PAUSE_DPG_ACK_MASK, ret_code);

				/* Restore */
				ring = &adev->vcn.inst->ring_jpeg;
				FUNC3(UVD, 0, mmUVD_LMI_JRBC_RB_VMID, 0);
				FUNC3(UVD, 0, mmUVD_JRBC_RB_CNTL,
							UVD_JRBC_RB_CNTL__RB_NO_FETCH_MASK |
							UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK);
				FUNC3(UVD, 0, mmUVD_LMI_JRBC_RB_64BIT_BAR_LOW,
							FUNC4(ring->gpu_addr));
				FUNC3(UVD, 0, mmUVD_LMI_JRBC_RB_64BIT_BAR_HIGH,
							FUNC5(ring->gpu_addr));
				FUNC3(UVD, 0, mmUVD_JRBC_RB_RPTR, ring->wptr);
				FUNC3(UVD, 0, mmUVD_JRBC_RB_WPTR, ring->wptr);
				FUNC3(UVD, 0, mmUVD_JRBC_RB_CNTL,
							UVD_JRBC_RB_CNTL__RB_RPTR_WR_EN_MASK);

				ring = &adev->vcn.inst->ring_dec;
				FUNC3(UVD, 0, mmUVD_RBC_RB_WPTR,
						   FUNC1(UVD, 0, mmUVD_SCRATCH2) & 0x7FFFFFFF);
				FUNC2(UVD, 0, mmUVD_POWER_STATUS,
						   UVD_PGFSM_CONFIG__UVDM_UVDU_PWR_ON,
						   UVD_POWER_STATUS__UVD_POWER_STATUS_MASK, ret_code);
			}
		} else {
			/* unpause dpg jpeg, no need to wait */
			reg_data &= ~UVD_DPG_PAUSE__JPEG_PAUSE_DPG_REQ_MASK;
			FUNC3(UVD, 0, mmUVD_DPG_PAUSE, reg_data);
		}
		adev->vcn.pause_state.jpeg = new_state->jpeg;
	}

	return 0;
}