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
struct request_wait {int /*<<< orphan*/  cb; int /*<<< orphan*/  tsk; } ;
struct i915_request {TYPE_4__* engine; int /*<<< orphan*/  fence; int /*<<< orphan*/  i915; } ;
struct TYPE_8__ {TYPE_3__* gt; } ;
struct TYPE_5__ {int /*<<< orphan*/  dep_map; } ;
struct TYPE_6__ {TYPE_1__ mutex; } ;
struct TYPE_7__ {TYPE_2__ reset; } ;

/* Variables and functions */
 scalar_t__ CONFIG_DRM_I915_SPIN_REQUEST ; 
 long ERESTARTSYS ; 
 long ETIME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  I915_PRIORITY_WAIT ; 
 unsigned int I915_WAIT_INTERRUPTIBLE ; 
 unsigned int I915_WAIT_PRIORITY ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  _THIS_IP_ ; 
 scalar_t__ FUNC2 (struct i915_request*,int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct i915_request*) ; 
 scalar_t__ FUNC9 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC10 (struct i915_request*) ; 
 int /*<<< orphan*/  FUNC11 (struct i915_request*,int /*<<< orphan*/ ) ; 
 long FUNC12 (long) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  request_wait_wake ; 
 int /*<<< orphan*/  FUNC16 (int const) ; 
 scalar_t__ FUNC17 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct i915_request*,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct i915_request*) ; 

long FUNC20(struct i915_request *rq,
		       unsigned int flags,
		       long timeout)
{
	const int state = flags & I915_WAIT_INTERRUPTIBLE ?
		TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE;
	struct request_wait wait;

	FUNC13();
	FUNC0(timeout < 0);

	if (FUNC5(&rq->fence))
		return timeout;

	if (!timeout)
		return -ETIME;

	FUNC18(rq, flags);

	/*
	 * We must never wait on the GPU while holding a lock as we
	 * may need to perform a GPU reset. So while we don't need to
	 * serialise wait/reset with an explicit lock, we do want
	 * lockdep to detect potential dependency cycles.
	 */
	FUNC14(&rq->engine->gt->reset.mutex.dep_map, 0, 0, _THIS_IP_);

	/*
	 * Optimistic spin before touching IRQs.
	 *
	 * We may use a rather large value here to offset the penalty of
	 * switching away from the active task. Frequently, the client will
	 * wait upon an old swapbuffer to throttle itself to remain within a
	 * frame of the gpu. If the client is running in lockstep with the gpu,
	 * then it should not be waiting long at all, and a sleep now will incur
	 * extra scheduler latency in producing the next frame. To try to
	 * avoid adding the cost of enabling/disabling the interrupt to the
	 * short wait, we first spin to see if the request would have completed
	 * in the time taken to setup the interrupt.
	 *
	 * We need upto 5us to enable the irq, and upto 20us to hide the
	 * scheduler latency of a context switch, ignoring the secondary
	 * impacts from a context switch such as cache eviction.
	 *
	 * The scheme used for low-latency IO is called "hybrid interrupt
	 * polling". The suggestion there is to sleep until just before you
	 * expect to be woken by the device interrupt and then poll for its
	 * completion. That requires having a good predictor for the request
	 * duration, which we currently lack.
	 */
	if (CONFIG_DRM_I915_SPIN_REQUEST &&
	    FUNC2(rq, state, CONFIG_DRM_I915_SPIN_REQUEST)) {
		FUNC7(&rq->fence);
		goto out;
	}

	/*
	 * This client is about to stall waiting for the GPU. In many cases
	 * this is undesirable and limits the throughput of the system, as
	 * many clients cannot continue processing user input/output whilst
	 * blocked. RPS autotuning may take tens of milliseconds to respond
	 * to the GPU load and thus incurs additional latency for the client.
	 * We can circumvent that by promoting the GPU frequency to maximum
	 * before we sleep. This makes the GPU throttle up much more quickly
	 * (good for benchmarks and user experience, e.g. window animations),
	 * but at a cost of spending more power processing the workload
	 * (bad for battery).
	 */
	if (flags & I915_WAIT_PRIORITY) {
		if (!FUNC10(rq) && FUNC1(rq->i915) >= 6)
			FUNC8(rq);
		FUNC11(rq, I915_PRIORITY_WAIT);
	}

	wait.tsk = current;
	if (FUNC4(&rq->fence, &wait.cb, request_wait_wake))
		goto out;

	for (;;) {
		FUNC16(state);

		if (FUNC9(rq)) {
			FUNC7(&rq->fence);
			break;
		}

		if (FUNC17(state, current)) {
			timeout = -ERESTARTSYS;
			break;
		}

		if (!timeout) {
			timeout = -ETIME;
			break;
		}

		timeout = FUNC12(timeout);
	}
	FUNC3(TASK_RUNNING);

	FUNC6(&rq->fence, &wait.cb);

out:
	FUNC15(&rq->engine->gt->reset.mutex.dep_map, 0, _THIS_IP_);
	FUNC19(rq);
	return timeout;
}