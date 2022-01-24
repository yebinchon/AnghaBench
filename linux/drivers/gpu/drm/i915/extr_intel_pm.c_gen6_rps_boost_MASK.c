#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct intel_rps {scalar_t__ boost_freq; int /*<<< orphan*/  boosts; int /*<<< orphan*/  work; int /*<<< orphan*/  cur_freq; int /*<<< orphan*/  num_waiters; int /*<<< orphan*/  enabled; } ;
struct i915_request {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  fence; TYPE_2__* i915; } ;
struct TYPE_3__ {struct intel_rps rps; } ;
struct TYPE_4__ {TYPE_1__ gt_pm; } ;

/* Variables and functions */
 int /*<<< orphan*/  I915_REQUEST_WAITBOOST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*) ; 
 scalar_t__ FUNC5 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC9(struct i915_request *rq)
{
	struct intel_rps *rps = &rq->i915->gt_pm.rps;
	unsigned long flags;
	bool boost;

	/* This is intentionally racy! We peek at the state here, then
	 * validate inside the RPS worker.
	 */
	if (!rps->enabled)
		return;

	if (FUNC5(rq))
		return;

	/* Serializes with i915_request_retire() */
	boost = false;
	FUNC7(&rq->lock, flags);
	if (!FUNC4(rq) &&
	    !FUNC3(&rq->fence)) {
		boost = !FUNC1(&rps->num_waiters);
		rq->flags |= I915_REQUEST_WAITBOOST;
	}
	FUNC8(&rq->lock, flags);
	if (!boost)
		return;

	if (FUNC0(rps->cur_freq) < rps->boost_freq)
		FUNC6(&rps->work);

	FUNC2(&rps->boosts);
}