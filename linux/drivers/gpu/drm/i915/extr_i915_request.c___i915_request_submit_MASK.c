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
struct TYPE_7__ {int /*<<< orphan*/  requests; int /*<<< orphan*/  lock; } ;
struct intel_engine_cs {TYPE_3__ active; int /*<<< orphan*/  serial; int /*<<< orphan*/  (* emit_fini_breadcrumb ) (struct i915_request*,scalar_t__) ;int /*<<< orphan*/  saturated; int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  seqno; int /*<<< orphan*/  context; } ;
struct TYPE_6__ {int /*<<< orphan*/  link; int /*<<< orphan*/  semaphores; } ;
struct i915_request {int /*<<< orphan*/  lock; TYPE_4__ fence; TYPE_2__ sched; scalar_t__ postfix; TYPE_1__* ring; int /*<<< orphan*/  semaphore; int /*<<< orphan*/  gem_context; struct intel_engine_cs* engine; } ;
struct TYPE_5__ {scalar_t__ vaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT ; 
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  I915_FENCE_FLAG_ACTIVE ; 
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC2 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_request*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC6 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC7 (struct i915_request*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct intel_engine_cs*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct i915_request*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct i915_request*) ; 

bool FUNC19(struct i915_request *request)
{
	struct intel_engine_cs *engine = request->engine;
	bool result = false;

	FUNC1("%s fence %llx:%lld, current %d\n",
		  engine->name,
		  request->fence.context, request->fence.seqno,
		  FUNC3(request));

	FUNC0(!FUNC10());
	FUNC12(&engine->active.lock);

	/*
	 * With the advent of preempt-to-busy, we frequently encounter
	 * requests that we have unsubmitted from HW, but left running
	 * until the next ack and so have completed in the meantime. On
	 * resubmission of that completed request, we can skip
	 * updating the payload, and execlists can even skip submitting
	 * the request.
	 *
	 * We must remove the request from the caller's priority queue,
	 * and the caller must only call us when the request is in their
	 * priority queue, under the active.lock. This ensures that the
	 * request has *not* yet been retired and we can safely move
	 * the request into the engine->active.list where it will be
	 * dropped upon retiring. (Otherwise if resubmit a *retired*
	 * request, this would be a horrible use-after-free.)
	 */
	if (FUNC5(request))
		goto xfer;

	if (FUNC4(request->gem_context))
		FUNC7(request, -EIO);

	/*
	 * Are we using semaphores when the gpu is already saturated?
	 *
	 * Using semaphores incurs a cost in having the GPU poll a
	 * memory location, busywaiting for it to change. The continual
	 * memory reads can have a noticeable impact on the rest of the
	 * system with the extra bus traffic, stalling the cpu as it too
	 * tries to access memory across the bus (perf stat -e bus-cycles).
	 *
	 * If we installed a semaphore on this request and we only submit
	 * the request after the signaler completed, that indicates the
	 * system is overloaded and using semaphores at this time only
	 * increases the amount of work we are doing. If so, we disable
	 * further use of semaphores until we are idle again, whence we
	 * optimistically try again.
	 */
	if (request->sched.semaphores &&
	    FUNC8(&request->semaphore))
		engine->saturated |= request->sched.semaphores;

	engine->emit_fini_breadcrumb(request,
				     request->ring->vaddr + request->postfix);

	FUNC18(request);
	engine->serial++;
	result = true;

xfer:	/* We may be recursing from the signal callback of another i915 fence */
	FUNC13(&request->lock, SINGLE_DEPTH_NESTING);

	if (!FUNC16(I915_FENCE_FLAG_ACTIVE, &request->fence.flags))
		FUNC11(&request->sched.link, &engine->active.requests);

	if (FUNC17(DMA_FENCE_FLAG_ENABLE_SIGNAL_BIT, &request->fence.flags) &&
	    !FUNC17(DMA_FENCE_FLAG_SIGNALED_BIT, &request->fence.flags) &&
	    !FUNC6(request))
		FUNC9(engine);

	FUNC2(request);

	FUNC14(&request->lock);

	return result;
}