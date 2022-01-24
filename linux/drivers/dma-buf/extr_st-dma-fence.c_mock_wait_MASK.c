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
struct wait_cb {int /*<<< orphan*/  cb; int /*<<< orphan*/  task; } ;
struct dma_fence {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FENCE_FLAG_SIGNALED_BIT ; 
 long ERESTARTSYS ; 
 long ETIME ; 
 int TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC1 (struct dma_fence*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dma_fence*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mock_wakeup ; 
 long FUNC3 (long) ; 
 int /*<<< orphan*/  FUNC4 (int const) ; 
 scalar_t__ FUNC5 (int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static long FUNC7(struct dma_fence *f, bool intr, long timeout)
{
	const int state = intr ? TASK_INTERRUPTIBLE : TASK_UNINTERRUPTIBLE;
	struct wait_cb cb = { .task = current };

	if (FUNC1(f, &cb.cb, mock_wakeup))
		return timeout;

	while (timeout) {
		FUNC4(state);

		if (FUNC6(DMA_FENCE_FLAG_SIGNALED_BIT, &f->flags))
			break;

		if (FUNC5(state, current))
			break;

		timeout = FUNC3(timeout);
	}
	FUNC0(TASK_RUNNING);

	if (!FUNC2(f, &cb.cb))
		return timeout;

	if (FUNC5(state, current))
		return -ERESTARTSYS;

	return -ETIME;
}