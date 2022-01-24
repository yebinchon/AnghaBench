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
struct i915_request {TYPE_1__* engine; int /*<<< orphan*/  i915; } ;
struct drm_i915_mocs_table {int dummy; } ;
struct TYPE_2__ {scalar_t__ class; int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ RENDER_CLASS ; 
 int FUNC1 (struct i915_request*,struct drm_i915_mocs_table*) ; 
 int FUNC2 (struct i915_request*,struct drm_i915_mocs_table*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct drm_i915_mocs_table*) ; 

int FUNC4(struct i915_request *rq)
{
	struct drm_i915_mocs_table t;
	int ret;

	if (FUNC0(rq->i915) ||
	    rq->engine->class != RENDER_CLASS)
		return 0;

	if (FUNC3(rq->engine->gt, &t)) {
		/* Program the RCS control registers */
		ret = FUNC1(rq, &t);
		if (ret)
			return ret;

		/* Now program the l3cc registers */
		ret = FUNC2(rq, &t);
		if (ret)
			return ret;
	}

	return 0;
}