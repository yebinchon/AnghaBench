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
typedef  scalar_t__ uint32_t ;
struct msm_fence_context {scalar_t__ last_fence; int /*<<< orphan*/  completed_fence; int /*<<< orphan*/  event; int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int EBUSY ; 
 int EINVAL ; 
 int ERESTARTSYS ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC2 (struct msm_fence_context*,scalar_t__) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,unsigned long) ; 

int FUNC6(struct msm_fence_context *fctx, uint32_t fence,
		ktime_t *timeout, bool interruptible)
{
	int ret;

	if (fence > fctx->last_fence) {
		FUNC1("%s: waiting on invalid fence: %u (of %u)\n",
				fctx->name, fence, fctx->last_fence);
		return -EINVAL;
	}

	if (!timeout) {
		/* no-wait: */
		ret = FUNC2(fctx, fence) ? 0 : -EBUSY;
	} else {
		unsigned long remaining_jiffies = FUNC3(timeout);

		if (interruptible)
			ret = FUNC4(fctx->event,
				FUNC2(fctx, fence),
				remaining_jiffies);
		else
			ret = FUNC5(fctx->event,
				FUNC2(fctx, fence),
				remaining_jiffies);

		if (ret == 0) {
			FUNC0("timeout waiting for fence: %u (completed: %u)",
					fence, fctx->completed_fence);
			ret = -ETIMEDOUT;
		} else if (ret != -ERESTARTSYS) {
			ret = 0;
		}
	}

	return ret;
}