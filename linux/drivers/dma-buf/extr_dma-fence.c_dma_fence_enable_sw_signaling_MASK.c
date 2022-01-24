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
struct dma_fence {int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_signaling ) (struct dma_fence*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ; 
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence*) ; 

void FUNC7(struct dma_fence *fence)
{
	unsigned long flags;

	if (!FUNC4(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT,
			      &fence->flags) &&
	    !FUNC5(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags) &&
	    fence->ops->enable_signaling) {
		FUNC6(fence);

		FUNC1(fence->lock, flags);

		if (!fence->ops->enable_signaling(fence))
			FUNC0(fence);

		FUNC2(fence->lock, flags);
	}
}