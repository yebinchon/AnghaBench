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
struct intel_timeline {int /*<<< orphan*/  mutex; } ;
struct i915_request {int dummy; } ;
struct i915_active_request {int /*<<< orphan*/  link; int /*<<< orphan*/  request; } ;
struct i915_active {int /*<<< orphan*/  count; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_active*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_active_request*,struct i915_request*) ; 
 struct i915_active_request* FUNC5 (struct i915_active*,struct intel_timeline*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (struct i915_active*) ; 
 int /*<<< orphan*/  FUNC9 (struct i915_active*) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_active_request*) ; 
 scalar_t__ FUNC11 (struct i915_active_request*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct i915_active_request*) ; 

int FUNC14(struct i915_active *ref,
		    struct intel_timeline *tl,
		    struct i915_request *rq)
{
	struct i915_active_request *active;
	int err;

	FUNC12(&tl->mutex);

	/* Prevent reaping in case we malloc/wait while building the tree */
	err = FUNC8(ref);
	if (err)
		return err;

	active = FUNC5(ref, tl);
	if (!active) {
		err = -ENOMEM;
		goto out;
	}

	if (FUNC11(active)) { /* proto-node used by our idle barrier */
		/*
		 * This request is on the kernel_context timeline, and so
		 * we can use it to substitute for the pending idle-barrer
		 * request that we want to emit on the kernel_context.
		 */
		FUNC3(ref, FUNC13(active));
		FUNC2(active->request, NULL);
		FUNC1(&active->link);
	} else {
		if (!FUNC10(active))
			FUNC6(&ref->count);
	}
	FUNC0(!FUNC7(&ref->count));
	FUNC4(active, rq);

out:
	FUNC9(ref);
	return err;
}