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
struct i915_request {TYPE_1__* engine; } ;
struct TYPE_2__ {int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 struct i915_request* FUNC0 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*,int) ; 

__attribute__((used)) static struct i915_request *FUNC3(struct i915_request *rq, int idx)
{
	FUNC2(rq, idx);

	/*
	 * Currently we are not tracking the rq->context being inflight
	 * (ce->inflight = rq->engine). It is only used by the execlists
	 * backend at the moment, a similar counting strategy would be
	 * required if we generalise the inflight tracking.
	 */

	FUNC1(rq->engine->gt);
	return FUNC0(rq);
}