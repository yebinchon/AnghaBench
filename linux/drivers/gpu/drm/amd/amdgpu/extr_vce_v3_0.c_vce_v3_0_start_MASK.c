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
struct amdgpu_ring {int gpu_addr; int ring_size; int /*<<< orphan*/  wptr; } ;
struct TYPE_2__ {int harvest_config; struct amdgpu_ring* ring; } ;
struct amdgpu_device {scalar_t__ asic_type; int /*<<< orphan*/  grbm_idx_mutex; TYPE_1__ vce; } ;

/* Variables and functions */
 int AMDGPU_VCE_HARVEST_VCE0 ; 
 scalar_t__ CHIP_STONEY ; 
 int /*<<< orphan*/  CLK_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ECPU_SOFT_RESET ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  JOB_BUSY ; 
 int /*<<< orphan*/  VCE_SOFT_RESET ; 
 int /*<<< orphan*/  VCE_STATUS ; 
 int /*<<< orphan*/  VCE_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  mmGRBM_GFX_INDEX ; 
 int mmGRBM_GFX_INDEX_DEFAULT ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_HI ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_HI2 ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_HI3 ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_LO ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_LO2 ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_LO3 ; 
 int /*<<< orphan*/  mmVCE_RB_RPTR ; 
 int /*<<< orphan*/  mmVCE_RB_RPTR2 ; 
 int /*<<< orphan*/  mmVCE_RB_RPTR3 ; 
 int /*<<< orphan*/  mmVCE_RB_SIZE ; 
 int /*<<< orphan*/  mmVCE_RB_SIZE2 ; 
 int /*<<< orphan*/  mmVCE_RB_SIZE3 ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR2 ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR3 ; 
 int /*<<< orphan*/  mmVCE_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int) ; 
 int FUNC10 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct amdgpu_device*,int) ; 

__attribute__((used)) static int FUNC12(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	int idx, r;

	FUNC7(&adev->grbm_idx_mutex);
	for (idx = 0; idx < 2; ++idx) {
		if (adev->vce.harvest_config & (1 << idx))
			continue;

		FUNC2(mmGRBM_GFX_INDEX, FUNC1(idx));

		/* Program instance 0 reg space for two instances or instance 0 case
		program instance 1 reg space for only instance 1 available case */
		if (idx != 1 || adev->vce.harvest_config == AMDGPU_VCE_HARVEST_VCE0) {
			ring = &adev->vce.ring[0];
			FUNC2(mmVCE_RB_RPTR, FUNC5(ring->wptr));
			FUNC2(mmVCE_RB_WPTR, FUNC5(ring->wptr));
			FUNC2(mmVCE_RB_BASE_LO, ring->gpu_addr);
			FUNC2(mmVCE_RB_BASE_HI, FUNC9(ring->gpu_addr));
			FUNC2(mmVCE_RB_SIZE, ring->ring_size / 4);

			ring = &adev->vce.ring[1];
			FUNC2(mmVCE_RB_RPTR2, FUNC5(ring->wptr));
			FUNC2(mmVCE_RB_WPTR2, FUNC5(ring->wptr));
			FUNC2(mmVCE_RB_BASE_LO2, ring->gpu_addr);
			FUNC2(mmVCE_RB_BASE_HI2, FUNC9(ring->gpu_addr));
			FUNC2(mmVCE_RB_SIZE2, ring->ring_size / 4);

			ring = &adev->vce.ring[2];
			FUNC2(mmVCE_RB_RPTR3, FUNC5(ring->wptr));
			FUNC2(mmVCE_RB_WPTR3, FUNC5(ring->wptr));
			FUNC2(mmVCE_RB_BASE_LO3, ring->gpu_addr);
			FUNC2(mmVCE_RB_BASE_HI3, FUNC9(ring->gpu_addr));
			FUNC2(mmVCE_RB_SIZE3, ring->ring_size / 4);
		}

		FUNC11(adev, idx);
		FUNC3(VCE_STATUS, JOB_BUSY, 1);

		if (adev->asic_type >= CHIP_STONEY)
			FUNC4(mmVCE_VCPU_CNTL, 1, ~0x200001);
		else
			FUNC3(VCE_VCPU_CNTL, CLK_EN, 1);

		FUNC3(VCE_SOFT_RESET, ECPU_SOFT_RESET, 0);
		FUNC6(100);

		r = FUNC10(adev);

		/* clear BUSY flag */
		FUNC3(VCE_STATUS, JOB_BUSY, 0);

		if (r) {
			FUNC0("VCE not responding, giving up!!!\n");
			FUNC8(&adev->grbm_idx_mutex);
			return r;
		}
	}

	FUNC2(mmGRBM_GFX_INDEX, mmGRBM_GFX_INDEX_DEFAULT);
	FUNC8(&adev->grbm_idx_mutex);

	return 0;
}