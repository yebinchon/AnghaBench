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
struct dma_fence {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 struct dma_fence* FUNC0 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct dma_fence *passed_fence)
{
	struct dma_fence *fence, *lfence = passed_fence;
	int ret = 1;

	if (!FUNC3(DMA_FENCE_FLAG_SIGNALED_BIT, &lfence->flags)) {
		fence = FUNC0(lfence);
		if (!fence)
			return -1;

		ret = !!FUNC1(fence);
		FUNC2(fence);
	}
	return ret;
}