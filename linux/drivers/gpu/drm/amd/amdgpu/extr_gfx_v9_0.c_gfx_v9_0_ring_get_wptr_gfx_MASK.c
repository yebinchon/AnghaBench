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
typedef  int u64 ;
struct amdgpu_ring {size_t wptr_offs; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;
typedef  int /*<<< orphan*/  atomic64_t ;

/* Variables and functions */
 int /*<<< orphan*/  GC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mmCP_RB0_WPTR ; 
 int /*<<< orphan*/  mmCP_RB0_WPTR_HI ; 

__attribute__((used)) static u64 FUNC2(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;
	u64 wptr;

	/* XXX check if swapping is necessary on BE */
	if (ring->use_doorbell) {
		wptr = FUNC1((atomic64_t *)&adev->wb.wb[ring->wptr_offs]);
	} else {
		wptr = FUNC0(GC, 0, mmCP_RB0_WPTR);
		wptr += (u64)FUNC0(GC, 0, mmCP_RB0_WPTR_HI) << 32;
	}

	return wptr;
}