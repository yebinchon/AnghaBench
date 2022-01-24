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
struct i915_sw_fence {int dummy; } ;
struct i915_sw_dma_fence_cb {int /*<<< orphan*/  base; struct i915_sw_fence* fence; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_sw_fence*) ; 
 int FUNC2 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (struct dma_fence*,int /*<<< orphan*/ *)) ; 
 scalar_t__ FUNC3 (struct dma_fence*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_sw_fence*) ; 

int FUNC5(struct i915_sw_fence *fence,
				    struct dma_fence *dma,
				    struct i915_sw_dma_fence_cb *cb)
{
	int ret;

	FUNC1(fence);

	if (FUNC3(dma))
		return 0;

	cb->fence = fence;
	FUNC4(fence);

	ret = FUNC2(dma, &cb->base, __dma_i915_sw_fence_wake);
	if (ret == 0) {
		ret = 1;
	} else {
		FUNC0(dma, &cb->base);
		if (ret == -ENOENT) /* fence already signaled */
			ret = 0;
	}

	return ret;
}