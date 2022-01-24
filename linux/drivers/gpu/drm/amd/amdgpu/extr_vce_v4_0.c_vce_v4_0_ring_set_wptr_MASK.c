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
struct amdgpu_ring {size_t wptr_offs; int me; int /*<<< orphan*/  wptr; int /*<<< orphan*/  doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VCE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR2 ; 
 int /*<<< orphan*/  mmVCE_RB_WPTR3 ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	if (ring->use_doorbell) {
		/* XXX check if swapping is necessary on BE */
		adev->wb.wb[ring->wptr_offs] = FUNC3(ring->wptr);
		FUNC1(ring->doorbell_index, FUNC3(ring->wptr));
		return;
	}

	if (ring->me == 0)
		FUNC2(FUNC0(VCE, 0, mmVCE_RB_WPTR),
			FUNC3(ring->wptr));
	else if (ring->me == 1)
		FUNC2(FUNC0(VCE, 0, mmVCE_RB_WPTR2),
			FUNC3(ring->wptr));
	else
		FUNC2(FUNC0(VCE, 0, mmVCE_RB_WPTR3),
			FUNC3(ring->wptr));
}