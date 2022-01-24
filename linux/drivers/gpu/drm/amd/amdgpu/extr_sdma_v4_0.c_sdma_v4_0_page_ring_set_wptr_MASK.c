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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u64 ;
struct amdgpu_ring {size_t wptr_offs; int wptr; int /*<<< orphan*/  me; int /*<<< orphan*/  doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mmSDMA0_PAGE_RB_WPTR ; 
 int /*<<< orphan*/  mmSDMA0_PAGE_RB_WPTR_HI ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	if (ring->use_doorbell) {
		u64 *wb = (u64 *)&adev->wb.wb[ring->wptr_offs];

		/* XXX check if swapping is necessary on BE */
		FUNC2(*wb, (ring->wptr << 2));
		FUNC0(ring->doorbell_index, ring->wptr << 2);
	} else {
		uint64_t wptr = ring->wptr << 2;

		FUNC1(ring->me, mmSDMA0_PAGE_RB_WPTR,
			    FUNC3(wptr));
		FUNC1(ring->me, mmSDMA0_PAGE_RB_WPTR_HI,
			    FUNC4(wptr));
	}
}