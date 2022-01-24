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
typedef  int u32 ;
struct radeon_ring {unsigned int ring_size; unsigned int rptr_offs; int nop; int ptr_mask; int ring_free_dw; int idx; int /*<<< orphan*/ * next_rptr_cpu_addr; scalar_t__ next_rptr_gpu_addr; int /*<<< orphan*/ * ring_obj; int /*<<< orphan*/  ring; int /*<<< orphan*/  gpu_addr; } ;
struct TYPE_2__ {int /*<<< orphan*/ * wb; scalar_t__ gpu_addr; scalar_t__ enabled; } ;
struct radeon_device {TYPE_1__ wb; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  RADEON_GEM_DOMAIN_GTT ; 
 int RADEON_WB_RING0_NEXT_RPTR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (struct radeon_device*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC3 (int /*<<< orphan*/ *,void**) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct radeon_device*,struct radeon_ring*) ; 
 int /*<<< orphan*/  FUNC8 (struct radeon_device*,struct radeon_ring*) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct radeon_device *rdev, struct radeon_ring *ring, unsigned ring_size,
		     unsigned rptr_offs, u32 nop)
{
	int r;

	ring->ring_size = ring_size;
	ring->rptr_offs = rptr_offs;
	ring->nop = nop;
	/* Allocate ring buffer */
	if (ring->ring_obj == NULL) {
		r = FUNC2(rdev, ring->ring_size, PAGE_SIZE, true,
				     RADEON_GEM_DOMAIN_GTT, 0, NULL,
				     NULL, &ring->ring_obj);
		if (r) {
			FUNC1(rdev->dev, "(%d) ring create failed\n", r);
			return r;
		}
		r = FUNC5(ring->ring_obj, false);
		if (FUNC9(r != 0))
			return r;
		r = FUNC4(ring->ring_obj, RADEON_GEM_DOMAIN_GTT,
					&ring->gpu_addr);
		if (r) {
			FUNC6(ring->ring_obj);
			FUNC1(rdev->dev, "(%d) ring pin failed\n", r);
			return r;
		}
		r = FUNC3(ring->ring_obj,
				       (void **)&ring->ring);
		FUNC6(ring->ring_obj);
		if (r) {
			FUNC1(rdev->dev, "(%d) ring map failed\n", r);
			return r;
		}
	}
	ring->ptr_mask = (ring->ring_size / 4) - 1;
	ring->ring_free_dw = ring->ring_size / 4;
	if (rdev->wb.enabled) {
		u32 index = RADEON_WB_RING0_NEXT_RPTR + (ring->idx * 4);
		ring->next_rptr_gpu_addr = rdev->wb.gpu_addr + index;
		ring->next_rptr_cpu_addr = &rdev->wb.wb[index/4];
	}
	if (FUNC7(rdev, ring)) {
		FUNC0("Failed to register debugfs file for rings !\n");
	}
	FUNC8(rdev, ring);
	return 0;
}