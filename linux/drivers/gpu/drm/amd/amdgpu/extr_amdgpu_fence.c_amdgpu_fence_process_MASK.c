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
typedef  scalar_t__ uint32_t ;
struct dma_fence {int dummy; } ;
struct amdgpu_fence_driver {scalar_t__ sync_seq; scalar_t__ num_fences_mask; struct dma_fence** fences; int /*<<< orphan*/  fallback_timer; int /*<<< orphan*/  last_seq; } ;
struct amdgpu_ring {struct amdgpu_fence_driver fence_drv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct amdgpu_ring*) ; 
 int /*<<< orphan*/  FUNC4 (struct amdgpu_ring*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dma_fence*) ; 
 int FUNC9 (struct dma_fence*) ; 
 struct dma_fence* FUNC10 (struct dma_fence*,int) ; 
 scalar_t__ FUNC11 (int) ; 

bool FUNC12(struct amdgpu_ring *ring)
{
	struct amdgpu_fence_driver *drv = &ring->fence_drv;
	uint32_t seq, last_seq;
	int r;

	do {
		last_seq = FUNC6(&ring->fence_drv.last_seq);
		seq = FUNC3(ring);

	} while (FUNC5(&drv->last_seq, last_seq, seq) != last_seq);

	if (FUNC7(&ring->fence_drv.fallback_timer) &&
	    seq != ring->fence_drv.sync_seq)
		FUNC4(ring);

	if (FUNC11(seq == last_seq))
		return false;

	last_seq &= drv->num_fences_mask;
	seq &= drv->num_fences_mask;

	do {
		struct dma_fence *fence, **ptr;

		++last_seq;
		last_seq &= drv->num_fences_mask;
		ptr = &drv->fences[last_seq];

		/* There is always exactly one thread signaling this fence slot */
		fence = FUNC10(*ptr, 1);
		FUNC2(*ptr, NULL);

		if (!fence)
			continue;

		r = FUNC9(fence);
		if (!r)
			FUNC1(fence, "signaled from irq context\n");
		else
			FUNC0();

		FUNC8(fence);
	} while (last_seq != seq);

	return true;
}