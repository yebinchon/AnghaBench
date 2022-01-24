#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint32_t ;
struct radeon_ring {int wptr; int gpu_addr; int ring_size; } ;
struct radeon_device {struct radeon_ring* ring; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t TN_RING_TYPE_VCE1_INDEX ; 
 size_t TN_RING_TYPE_VCE2_INDEX ; 
 int VCE_CLK_EN ; 
 int VCE_ECPU_SOFT_RESET ; 
 int VCE_FME_SOFT_RESET ; 
 int /*<<< orphan*/  VCE_RB_BASE_HI ; 
 int /*<<< orphan*/  VCE_RB_BASE_HI2 ; 
 int /*<<< orphan*/  VCE_RB_BASE_LO ; 
 int /*<<< orphan*/  VCE_RB_BASE_LO2 ; 
 int /*<<< orphan*/  VCE_RB_RPTR ; 
 int /*<<< orphan*/  VCE_RB_RPTR2 ; 
 int /*<<< orphan*/  VCE_RB_SIZE ; 
 int /*<<< orphan*/  VCE_RB_SIZE2 ; 
 int /*<<< orphan*/  VCE_RB_WPTR ; 
 int /*<<< orphan*/  VCE_RB_WPTR2 ; 
 int /*<<< orphan*/  VCE_SOFT_RESET ; 
 int /*<<< orphan*/  VCE_STATUS ; 
 int /*<<< orphan*/  VCE_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int) ; 

int FUNC6(struct radeon_device *rdev)
{
	struct radeon_ring *ring;
	int i, j, r;

	/* set BUSY flag */
	FUNC3(VCE_STATUS, 1, ~1);

	ring = &rdev->ring[TN_RING_TYPE_VCE1_INDEX];
	FUNC2(VCE_RB_RPTR, ring->wptr);
	FUNC2(VCE_RB_WPTR, ring->wptr);
	FUNC2(VCE_RB_BASE_LO, ring->gpu_addr);
	FUNC2(VCE_RB_BASE_HI, FUNC5(ring->gpu_addr));
	FUNC2(VCE_RB_SIZE, ring->ring_size / 4);

	ring = &rdev->ring[TN_RING_TYPE_VCE2_INDEX];
	FUNC2(VCE_RB_RPTR2, ring->wptr);
	FUNC2(VCE_RB_WPTR2, ring->wptr);
	FUNC2(VCE_RB_BASE_LO2, ring->gpu_addr);
	FUNC2(VCE_RB_BASE_HI2, FUNC5(ring->gpu_addr));
	FUNC2(VCE_RB_SIZE2, ring->ring_size / 4);

	FUNC3(VCE_VCPU_CNTL, VCE_CLK_EN, ~VCE_CLK_EN);

	FUNC3(VCE_SOFT_RESET,
		 VCE_ECPU_SOFT_RESET |
		 VCE_FME_SOFT_RESET, ~(
		 VCE_ECPU_SOFT_RESET |
		 VCE_FME_SOFT_RESET));

	FUNC4(100);

	FUNC3(VCE_SOFT_RESET, 0, ~(
		 VCE_ECPU_SOFT_RESET |
		 VCE_FME_SOFT_RESET));

	for (i = 0; i < 10; ++i) {
		uint32_t status;
		for (j = 0; j < 100; ++j) {
			status = FUNC1(VCE_STATUS);
			if (status & 2)
				break;
			FUNC4(10);
		}
		r = 0;
		if (status & 2)
			break;

		FUNC0("VCE not responding, trying to reset the ECPU!!!\n");
		FUNC3(VCE_SOFT_RESET, VCE_ECPU_SOFT_RESET, ~VCE_ECPU_SOFT_RESET);
		FUNC4(10);
		FUNC3(VCE_SOFT_RESET, 0, ~VCE_ECPU_SOFT_RESET);
		FUNC4(10);
		r = -1;
	}

	/* clear BUSY flag */
	FUNC3(VCE_STATUS, 0, ~1);

	if (r) {
		FUNC0("VCE not responding, giving up!!!\n");
		return r;
	}

	return 0;
}