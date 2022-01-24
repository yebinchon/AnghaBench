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
struct msm_ringbuffer {int /*<<< orphan*/  lock; TYPE_1__* memptrs; } ;
struct msm_gpu {int nr_rings; struct msm_ringbuffer** rb; } ;
struct TYPE_2__ {scalar_t__ rptr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct msm_ringbuffer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct msm_ringbuffer *FUNC3(struct msm_gpu *gpu)
{
	unsigned long flags;
	int i;

	for (i = 0; i < gpu->nr_rings; i++) {
		bool empty;
		struct msm_ringbuffer *ring = gpu->rb[i];

		FUNC1(&ring->lock, flags);
		empty = (FUNC0(ring) == ring->memptrs->rptr);
		FUNC2(&ring->lock, flags);

		if (!empty)
			return ring;
	}

	return NULL;
}