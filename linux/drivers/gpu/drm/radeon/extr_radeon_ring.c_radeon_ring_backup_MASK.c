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
typedef  int /*<<< orphan*/  uint32_t ;
struct radeon_ring {int wptr; int ring_size; unsigned int ptr_mask; int /*<<< orphan*/ * ring; int /*<<< orphan*/ * next_rptr_cpu_addr; scalar_t__ rptr_save_reg; int /*<<< orphan*/  idx; int /*<<< orphan*/ * ring_obj; } ;
struct TYPE_2__ {scalar_t__ enabled; } ;
struct radeon_device {int /*<<< orphan*/  ring_lock; TYPE_1__ wb; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct radeon_device*,int /*<<< orphan*/ ) ; 

unsigned FUNC6(struct radeon_device *rdev, struct radeon_ring *ring,
			    uint32_t **data)
{
	unsigned size, ptr, i;

	/* just in case lock the ring */
	FUNC3(&rdev->ring_lock);
	*data = NULL;

	if (ring->ring_obj == NULL) {
		FUNC4(&rdev->ring_lock);
		return 0;
	}

	/* it doesn't make sense to save anything if all fences are signaled */
	if (!FUNC5(rdev, ring->idx)) {
		FUNC4(&rdev->ring_lock);
		return 0;
	}

	/* calculate the number of dw on the ring */
	if (ring->rptr_save_reg)
		ptr = FUNC0(ring->rptr_save_reg);
	else if (rdev->wb.enabled)
		ptr = FUNC2(*ring->next_rptr_cpu_addr);
	else {
		/* no way to read back the next rptr */
		FUNC4(&rdev->ring_lock);
		return 0;
	}

	size = ring->wptr + (ring->ring_size / 4);
	size -= ptr;
	size &= ring->ptr_mask;
	if (size == 0) {
		FUNC4(&rdev->ring_lock);
		return 0;
	}

	/* and then save the content of the ring */
	*data = FUNC1(size, sizeof(uint32_t), GFP_KERNEL);
	if (!*data) {
		FUNC4(&rdev->ring_lock);
		return 0;
	}
	for (i = 0; i < size; ++i) {
		(*data)[i] = ring->ring[ptr++];
		ptr &= ring->ptr_mask;
	}

	FUNC4(&rdev->ring_lock);
	return size;
}