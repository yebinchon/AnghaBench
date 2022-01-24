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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCE ; 
 int VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK ; 
 int VCE_STATUS__JOB_BUSY_MASK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
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
 int /*<<< orphan*/  mmVCE_SOFT_RESET ; 
 int /*<<< orphan*/  mmVCE_STATUS ; 
 int /*<<< orphan*/  mmVCE_VCPU_CNTL ; 
 int FUNC6 (int) ; 
 int FUNC7 (struct amdgpu_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct amdgpu_device*) ; 

__attribute__((used)) static int FUNC9(struct amdgpu_device *adev)
{
	struct amdgpu_ring *ring;
	int r;

	ring = &adev->vce.ring[0];

	FUNC2(FUNC1(VCE, 0, mmVCE_RB_RPTR), FUNC4(ring->wptr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_WPTR), FUNC4(ring->wptr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_BASE_LO), ring->gpu_addr);
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_BASE_HI), FUNC6(ring->gpu_addr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_SIZE), ring->ring_size / 4);

	ring = &adev->vce.ring[1];

	FUNC2(FUNC1(VCE, 0, mmVCE_RB_RPTR2), FUNC4(ring->wptr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_WPTR2), FUNC4(ring->wptr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_BASE_LO2), ring->gpu_addr);
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_BASE_HI2), FUNC6(ring->gpu_addr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_SIZE2), ring->ring_size / 4);

	ring = &adev->vce.ring[2];

	FUNC2(FUNC1(VCE, 0, mmVCE_RB_RPTR3), FUNC4(ring->wptr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_WPTR3), FUNC4(ring->wptr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_BASE_LO3), ring->gpu_addr);
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_BASE_HI3), FUNC6(ring->gpu_addr));
	FUNC2(FUNC1(VCE, 0, mmVCE_RB_SIZE3), ring->ring_size / 4);

	FUNC8(adev);
	FUNC3(FUNC1(VCE, 0, mmVCE_STATUS), VCE_STATUS__JOB_BUSY_MASK,
			~VCE_STATUS__JOB_BUSY_MASK);

	FUNC3(FUNC1(VCE, 0, mmVCE_VCPU_CNTL), 1, ~0x200001);

	FUNC3(FUNC1(VCE, 0, mmVCE_SOFT_RESET), 0,
			~VCE_SOFT_RESET__ECPU_SOFT_RESET_MASK);
	FUNC5(100);

	r = FUNC7(adev);

	/* clear BUSY flag */
	FUNC3(FUNC1(VCE, 0, mmVCE_STATUS), 0, ~VCE_STATUS__JOB_BUSY_MASK);

	if (r) {
		FUNC0("VCE not responding, giving up!!!\n");
		return r;
	}

	return 0;
}