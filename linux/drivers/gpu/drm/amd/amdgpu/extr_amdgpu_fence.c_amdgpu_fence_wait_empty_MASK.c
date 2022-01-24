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
typedef  size_t uint64_t ;
struct dma_fence {int dummy; } ;
struct TYPE_2__ {size_t num_fences_mask; struct dma_fence** fences; int /*<<< orphan*/  sync_seq; } ;
struct amdgpu_ring {TYPE_1__ fence_drv; } ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int FUNC3 (struct dma_fence*,int) ; 
 struct dma_fence* FUNC4 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(struct amdgpu_ring *ring)
{
	uint64_t seq = FUNC0(ring->fence_drv.sync_seq);
	struct dma_fence *fence, **ptr;
	int r;

	if (!seq)
		return 0;

	ptr = &ring->fence_drv.fences[seq & ring->fence_drv.num_fences_mask];
	FUNC5();
	fence = FUNC4(*ptr);
	if (!fence || !FUNC1(fence)) {
		FUNC6();
		return 0;
	}
	FUNC6();

	r = FUNC3(fence, false);
	FUNC2(fence);
	return r;
}