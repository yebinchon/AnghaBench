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
typedef  int /*<<< orphan*/  u32 ;
struct amdgpu_ring {size_t wptr_offs; size_t me; int /*<<< orphan*/  wptr; scalar_t__ use_pollmem; int /*<<< orphan*/  doorbell_index; scalar_t__ use_doorbell; struct amdgpu_device* adev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; } ;
struct amdgpu_device {TYPE_1__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ mmSDMA0_GFX_RB_WPTR ; 
 scalar_t__* sdma_offsets ; 

__attribute__((used)) static void FUNC4(struct amdgpu_ring *ring)
{
	struct amdgpu_device *adev = ring->adev;

	if (ring->use_doorbell) {
		u32 *wb = (u32 *)&adev->wb.wb[ring->wptr_offs];
		/* XXX check if swapping is necessary on BE */
		FUNC2(*wb, (FUNC3(ring->wptr) << 2));
		FUNC0(ring->doorbell_index, FUNC3(ring->wptr) << 2);
	} else if (ring->use_pollmem) {
		u32 *wb = (u32 *)&adev->wb.wb[ring->wptr_offs];

		FUNC2(*wb, (FUNC3(ring->wptr) << 2));
	} else {
		FUNC1(mmSDMA0_GFX_RB_WPTR + sdma_offsets[ring->me], FUNC3(ring->wptr) << 2);
	}
}