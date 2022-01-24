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
struct dma_resv {int dummy; } ;
struct dma_fence_ops {int dummy; } ;
struct dma_fence {struct dma_fence_ops const* ops; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i915_sw_fence*) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_fence*) ; 
 struct dma_fence* FUNC2 (struct dma_resv*) ; 
 int FUNC3 (struct dma_resv*,struct dma_fence**,unsigned int*,struct dma_fence***) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i915_sw_fence*,struct dma_fence*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dma_fence**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct i915_sw_fence *fence,
				    struct dma_resv *resv,
				    const struct dma_fence_ops *exclude,
				    bool write,
				    unsigned long timeout,
				    gfp_t gfp)
{
	struct dma_fence *excl;
	int ret = 0, pending;

	FUNC0(fence);
	FUNC7(FUNC4(gfp));

	if (write) {
		struct dma_fence **shared;
		unsigned int count, i;

		ret = FUNC3(resv,
							&excl, &count, &shared);
		if (ret)
			return ret;

		for (i = 0; i < count; i++) {
			if (shared[i]->ops == exclude)
				continue;

			pending = FUNC5(fence,
								shared[i],
								timeout,
								gfp);
			if (pending < 0) {
				ret = pending;
				break;
			}

			ret |= pending;
		}

		for (i = 0; i < count; i++)
			FUNC1(shared[i]);
		FUNC6(shared);
	} else {
		excl = FUNC2(resv);
	}

	if (ret >= 0 && excl && excl->ops != exclude) {
		pending = FUNC5(fence,
							excl,
							timeout,
							gfp);
		if (pending < 0)
			ret = pending;
		else
			ret |= pending;
	}

	FUNC1(excl);

	return ret;
}