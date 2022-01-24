#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  queue_priority_hint; } ;
struct TYPE_10__ {scalar_t__ submit_request; TYPE_4__ active; TYPE_3__ execlists; int /*<<< orphan*/  name; } ;
struct virtual_engine {TYPE_5__ base; struct i915_request* request; } ;
struct TYPE_7__ {int /*<<< orphan*/  link; } ;
struct TYPE_6__ {int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; } ;
struct i915_request {TYPE_2__ sched; TYPE_1__ fence; int /*<<< orphan*/  engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INT_MIN ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 scalar_t__ FUNC3 (struct i915_request*) ; 
 struct i915_request* FUNC4 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct virtual_engine* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct virtual_engine*) ; 

__attribute__((used)) static void FUNC14(struct i915_request *rq)
{
	struct virtual_engine *ve = FUNC12(rq->engine);
	struct i915_request *old;
	unsigned long flags;

	FUNC1("%s: rq=%llx:%lld\n",
		  ve->base.name,
		  rq->fence.context,
		  rq->fence.seqno);

	FUNC0(ve->base.submit_request != virtual_submit_request);

	FUNC9(&ve->base.active.lock, flags);

	old = ve->request;
	if (old) { /* background completion event from preempt-to-busy */
		FUNC0(!FUNC3(old));
		FUNC2(old);
		FUNC5(old);
	}

	if (FUNC3(rq)) {
		FUNC2(rq);

		ve->base.execlists.queue_priority_hint = INT_MIN;
		ve->request = NULL;
	} else {
		ve->base.execlists.queue_priority_hint = FUNC8(rq);
		ve->request = FUNC4(rq);

		FUNC0(!FUNC6(FUNC13(ve)));
		FUNC7(&rq->sched.link, FUNC13(ve));

		FUNC11(&ve->base.execlists.tasklet);
	}

	FUNC10(&ve->base.active.lock, flags);
}