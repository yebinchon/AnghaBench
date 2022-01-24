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
struct TYPE_2__ {struct amdgpu_ring* ring; } ;
struct amdgpu_device {TYPE_1__ vce; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_EN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ECPU_SOFT_RESET ; 
 int /*<<< orphan*/  VCE_SOFT_RESET ; 
 int /*<<< orphan*/  VCE_VCPU_CNTL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_HI ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_HI2 ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_LO ; 
 int /*<<< orphan*/  mmVCE_RB_BASE_LO2 ; 
 int /*<<< orphan*/  mmVCE_RB_RPTR ; 
 int /*<<< orphan*/  mmVCE_RB_RPTR2 ; 
 int /*<<< orphan*/  mmVCE_RB_SIZE ; 
 int /*<<< orphan*/  mmVCE_RB_SIZE2 ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR2 ; 
 int /*<<< orphan*/  mmVCE_STATUS ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct amdgpu_device*) ; 
 int FUNC8 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC11(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	int r;

	/* set BUSY flag */
	FUNC3(mmVCE_STATUS, 1, ~1);

	FUNC9(adev);
	FUNC7(adev);

	FUNC10(adev);

	ring = &adev->vce.ring[0];
	FUNC1(mmVCE_RB_RPTR, FUNC4(ring->wptr));
	FUNC1(mmVCE_RB_WPTR, FUNC4(ring->wptr));
	FUNC1(mmVCE_RB_BASE_LO, ring->gpu_addr);
	FUNC1(mmVCE_RB_BASE_HI, FUNC6(ring->gpu_addr));
	FUNC1(mmVCE_RB_SIZE, ring->ring_size / 4);

	ring = &adev->vce.ring[1];
	FUNC1(mmVCE_RB_RPTR2, FUNC4(ring->wptr));
	FUNC1(mmVCE_RB_WPTR2, FUNC4(ring->wptr));
	FUNC1(mmVCE_RB_BASE_LO2, ring->gpu_addr);
	FUNC1(mmVCE_RB_BASE_HI2, FUNC6(ring->gpu_addr));
	FUNC1(mmVCE_RB_SIZE2, ring->ring_size / 4);

	FUNC2(VCE_VCPU_CNTL, CLK_EN, 1);
	FUNC2(VCE_SOFT_RESET, ECPU_SOFT_RESET, 1);
	FUNC5(100);
	FUNC2(VCE_SOFT_RESET, ECPU_SOFT_RESET, 0);

	r = FUNC8(adev);

	/* clear BUSY flag */
	FUNC3(mmVCE_STATUS, 0, ~1);

	if (r) {
		FUNC0("VCE not responding, giving up!!!\n");
		return r;
	}

	return 0;
}