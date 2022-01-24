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
struct TYPE_2__ {int /*<<< orphan*/  request; } ;
struct intel_timeline {int /*<<< orphan*/  mutex; TYPE_1__ last_request; } ;
struct intel_context {struct intel_timeline* timeline; } ;
struct i915_request {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 struct i915_request* FUNC0 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC1 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 long FUNC3 (struct i915_request*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct i915_request* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static int FUNC9(struct intel_context *ce)
{
	struct intel_timeline *tl = ce->timeline;
	int err = 0;

	FUNC4(&tl->mutex);
	do {
		struct i915_request *rq;
		long timeout;

		FUNC7();
		rq = FUNC6(tl->last_request.request);
		if (rq)
			rq = FUNC0(rq);
		FUNC8();
		if (!rq)
			break;

		timeout = FUNC3(rq, 0, HZ / 10);
		if (timeout < 0)
			err = timeout;
		else
			FUNC2(rq);

		FUNC1(rq);
	} while (!err);
	FUNC5(&tl->mutex);

	return err;
}