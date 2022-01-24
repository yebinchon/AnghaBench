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
struct i915_sched_attr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  resv; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct dma_fence {int dummy; } ;

/* Variables and functions */
 unsigned int I915_WAIT_ALL ; 
 int /*<<< orphan*/  FUNC0 (struct dma_fence*) ; 
 struct dma_fence* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct dma_fence**,unsigned int*,struct dma_fence***) ; 
 int /*<<< orphan*/  FUNC3 (struct dma_fence*,struct i915_sched_attr const*) ; 
 int /*<<< orphan*/  FUNC4 (struct dma_fence**) ; 

int
FUNC5(struct drm_i915_gem_object *obj,
			      unsigned int flags,
			      const struct i915_sched_attr *attr)
{
	struct dma_fence *excl;

	if (flags & I915_WAIT_ALL) {
		struct dma_fence **shared;
		unsigned int count, i;
		int ret;

		ret = FUNC2(obj->base.resv,
							&excl, &count, &shared);
		if (ret)
			return ret;

		for (i = 0; i < count; i++) {
			FUNC3(shared[i], attr);
			FUNC0(shared[i]);
		}

		FUNC4(shared);
	} else {
		excl = FUNC1(obj->base.resv);
	}

	if (excl) {
		FUNC3(excl, attr);
		FUNC0(excl);
	}
	return 0;
}