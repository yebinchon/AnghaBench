#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_1__ active; int /*<<< orphan*/  name; } ;
struct TYPE_7__ {int /*<<< orphan*/  priority; } ;
struct TYPE_8__ {scalar_t__ semaphores; TYPE_3__ attr; } ;
struct TYPE_6__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; } ;
struct i915_request {TYPE_4__ sched; int /*<<< orphan*/  lock; TYPE_2__ fence; struct intel_engine_cs* engine; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_FENCE_FLAG_ACTIVE ; 
 int /*<<< orphan*/  I915_PRIORITY_NOSEMAPHORE ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC4 (struct i915_request*) ; 
 scalar_t__ FUNC5 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC11(struct i915_request *request)
{
	struct intel_engine_cs *engine = request->engine;

	FUNC1("%s fence %llx:%lld, current %d\n",
		  engine->name,
		  request->fence.context, request->fence.seqno,
		  FUNC3(request));

	FUNC0(!FUNC6());
	FUNC7(&engine->active.lock);

	/*
	 * Only unwind in reverse order, required so that the per-context list
	 * is kept in seqno/ring order.
	 */

	/* We may be recursing from the signal callback of another i915 fence */
	FUNC8(&request->lock, SINGLE_DEPTH_NESTING);

	if (FUNC10(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags))
		FUNC4(request);

	FUNC0(!FUNC10(I915_FENCE_FLAG_ACTIVE, &request->fence.flags));
	FUNC2(I915_FENCE_FLAG_ACTIVE, &request->fence.flags);

	FUNC9(&request->lock);

	/* We've already spun, don't charge on resubmitting. */
	if (request->sched.semaphores && FUNC5(request)) {
		request->sched.attr.priority |= I915_PRIORITY_NOSEMAPHORE;
		request->sched.semaphores = 0;
	}

	/*
	 * We don't need to wake_up any waiters on request->execute, they
	 * will get woken by any other event or us re-adding this request
	 * to the engine timeline (__i915_request_submit()). The waiters
	 * should be quite adapt at finding that the request now has a new
	 * global_seqno to the one they went to sleep on.
	 */
}