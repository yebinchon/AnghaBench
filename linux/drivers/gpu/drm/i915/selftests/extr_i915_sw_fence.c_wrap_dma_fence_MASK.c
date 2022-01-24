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
struct dma_fence {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct i915_sw_fence* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 struct i915_sw_fence* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct i915_sw_fence*) ; 
 int FUNC3 (struct i915_sw_fence*,struct dma_fence*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_sw_fence*) ; 

__attribute__((used)) static struct i915_sw_fence *
FUNC5(struct dma_fence *dma, unsigned long delay)
{
	struct i915_sw_fence *fence;
	int err;

	fence = FUNC1();
	if (!fence)
		return FUNC0(-ENOMEM);

	err = FUNC3(fence, dma, delay, GFP_NOWAIT);
	FUNC4(fence);
	if (err < 0) {
		FUNC2(fence);
		return FUNC0(err);
	}

	return fence;
}