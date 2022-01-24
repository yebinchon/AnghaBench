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
typedef  int u32 ;
struct drm_i915_private {int /*<<< orphan*/  sb_lock; } ;

/* Variables and functions */
 scalar_t__ COND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (scalar_t__,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (scalar_t__,int) ; 

int FUNC8(struct drm_i915_private *i915, u32 mbox, u32 request,
		      u32 reply_mask, u32 reply, int timeout_base_ms)
{
	u32 status;
	int ret;

	FUNC3(&i915->sb_lock);

#define COND \
	skl_pcode_try_request(i915, mbox, request, reply_mask, reply, &status)

	/*
	 * Prime the PCODE by doing a request first. Normally it guarantees
	 * that a subsequent request, at most @timeout_base_ms later, succeeds.
	 * _wait_for() doesn't guarantee when its passed condition is evaluated
	 * first, so send the first request explicitly.
	 */
	if (COND) {
		ret = 0;
		goto out;
	}
	ret = FUNC2(COND, timeout_base_ms * 1000, 10, 10);
	if (!ret)
		goto out;

	/*
	 * The above can time out if the number of requests was low (2 in the
	 * worst case) _and_ PCODE was busy for some reason even after a
	 * (queued) request and @timeout_base_ms delay. As a workaround retry
	 * the poll with preemption disabled to maximize the number of
	 * requests. Increase the timeout from @timeout_base_ms to 50ms to
	 * account for interrupts that could reduce the number of these
	 * requests, and for any quirks of the PCODE firmware that delays
	 * the request completion.
	 */
	FUNC0("PCODE timeout, retrying with preemption disabled\n");
	FUNC1(timeout_base_ms > 3);
	FUNC5();
	ret = FUNC7(COND, 50);
	FUNC6();

out:
	FUNC4(&i915->sb_lock);
	return ret ? ret : status;
#undef COND
}