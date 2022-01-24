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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int I915_WAIT_INTERRUPTIBLE ; 
 scalar_t__ FUNC1 (struct dma_fence*) ; 
 long FUNC2 (struct dma_fence*,unsigned int,long) ; 
 long FUNC3 (int /*<<< orphan*/ ,unsigned int,long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct dma_fence*) ; 

__attribute__((used)) static long
FUNC6(struct dma_fence *fence,
			   unsigned int flags,
			   long timeout)
{
	FUNC0(I915_WAIT_INTERRUPTIBLE != 0x1);

	if (FUNC4(DMA_FENCE_FLAG_SIGNALED_BIT, &fence->flags))
		return timeout;

	if (FUNC1(fence))
		return FUNC3(FUNC5(fence), flags, timeout);

	return FUNC2(fence,
				      flags & I915_WAIT_INTERRUPTIBLE,
				      timeout);
}