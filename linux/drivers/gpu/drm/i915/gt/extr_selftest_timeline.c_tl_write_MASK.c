#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct intel_timeline {int /*<<< orphan*/  hwsp_offset; TYPE_3__* gt; } ;
struct intel_engine_cs {int /*<<< orphan*/  kernel_context; } ;
struct i915_request {int dummy; } ;
struct TYPE_6__ {TYPE_2__* i915; } ;
struct TYPE_4__ {int /*<<< orphan*/  struct_mutex; } ;
struct TYPE_5__ {TYPE_1__ drm; } ;

/* Variables and functions */
 struct i915_request* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct i915_request*) ; 
 int FUNC2 (struct i915_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC6 (struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static struct i915_request *
FUNC9(struct intel_timeline *tl, struct intel_engine_cs *engine, u32 value)
{
	struct i915_request *rq;
	int err;

	FUNC7(&tl->gt->i915->drm.struct_mutex); /* lazy rq refs */

	err = FUNC5(tl);
	if (err) {
		rq = FUNC0(err);
		goto out;
	}

	rq = FUNC4(engine->kernel_context);
	if (FUNC1(rq))
		goto out_unpin;

	err = FUNC2(rq, tl->hwsp_offset, value);
	FUNC3(rq);
	if (err)
		rq = FUNC0(err);

out_unpin:
	FUNC6(tl);
out:
	if (FUNC1(rq))
		FUNC8("Failed to write to timeline!\n");
	return rq;
}