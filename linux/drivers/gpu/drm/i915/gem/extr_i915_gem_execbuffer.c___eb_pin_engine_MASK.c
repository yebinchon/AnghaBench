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
struct intel_timeline {int /*<<< orphan*/  mutex; } ;
struct intel_context {TYPE_1__* engine; } ;
struct i915_request {int dummy; } ;
struct i915_execbuffer {struct intel_context* context; TYPE_1__* engine; } ;
struct TYPE_2__ {int /*<<< orphan*/  gt; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  I915_WAIT_INTERRUPTIBLE ; 
 scalar_t__ FUNC0 (struct intel_timeline*) ; 
 int /*<<< orphan*/  MAX_SCHEDULE_TIMEOUT ; 
 int FUNC1 (struct intel_timeline*) ; 
 int FUNC2 (struct i915_execbuffer*,struct intel_context*) ; 
 int /*<<< orphan*/  FUNC3 (struct i915_execbuffer*,struct intel_context*) ; 
 struct i915_request* FUNC4 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC5 (struct i915_request*) ; 
 scalar_t__ FUNC6 (struct i915_request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC8 (struct intel_context*) ; 
 struct intel_timeline* FUNC9 (struct intel_context*) ; 
 int /*<<< orphan*/  FUNC10 (struct intel_timeline*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct i915_execbuffer *eb, struct intel_context *ce)
{
	struct intel_timeline *tl;
	struct i915_request *rq;
	int err;

	/*
	 * ABI: Before userspace accesses the GPU (e.g. execbuffer), report
	 * EIO if the GPU is already wedged.
	 */
	err = FUNC11(ce->engine->gt);
	if (err)
		return err;

	/*
	 * Pinning the contexts may generate requests in order to acquire
	 * GGTT space, so do this first before we reserve a seqno for
	 * ourselves.
	 */
	err = FUNC2(eb, ce);
	if (err)
		return err;

	/*
	 * Take a local wakeref for preparing to dispatch the execbuf as
	 * we expect to access the hardware fairly frequently in the
	 * process, and require the engine to be kept awake between accesses.
	 * Upon dispatch, we acquire another prolonged wakeref that we hold
	 * until the timeline is idle, which in turn releases the wakeref
	 * taken on the engine, and the parent device.
	 */
	tl = FUNC9(ce);
	if (FUNC0(tl)) {
		err = FUNC1(tl);
		goto err_unpin;
	}

	FUNC7(ce);
	rq = FUNC4(ce);

	FUNC10(tl);

	if (rq) {
		if (FUNC6(rq,
				      I915_WAIT_INTERRUPTIBLE,
				      MAX_SCHEDULE_TIMEOUT) < 0) {
			FUNC5(rq);
			err = -EINTR;
			goto err_exit;
		}

		FUNC5(rq);
	}

	eb->engine = ce->engine;
	eb->context = ce;
	return 0;

err_exit:
	FUNC12(&tl->mutex);
	FUNC8(ce);
	FUNC10(tl);
err_unpin:
	FUNC3(eb, ce);
	return err;
}