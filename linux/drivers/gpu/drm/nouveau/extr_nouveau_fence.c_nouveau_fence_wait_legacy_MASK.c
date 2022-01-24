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
struct nouveau_fence {int dummy; } ;
struct dma_fence {int dummy; } ;
typedef  unsigned long ktime_t ;

/* Variables and functions */
 long ERESTARTSYS ; 
 int /*<<< orphan*/  HRTIMER_MODE_REL ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int NSEC_PER_MSEC ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 struct nouveau_fence* FUNC1 (struct dma_fence*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct nouveau_fence*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (unsigned long,unsigned long) ; 

__attribute__((used)) static long
FUNC6(struct dma_fence *f, bool intr, long wait)
{
	struct nouveau_fence *fence = FUNC1(f);
	unsigned long sleep_time = NSEC_PER_MSEC / 1000;
	unsigned long t = jiffies, timeout = t + wait;

	while (!FUNC2(fence)) {
		ktime_t kt;

		t = jiffies;

		if (wait != MAX_SCHEDULE_TIMEOUT && FUNC5(t, timeout)) {
			FUNC0(TASK_RUNNING);
			return 0;
		}

		FUNC0(intr ? TASK_INTERRUPTIBLE :
					   TASK_UNINTERRUPTIBLE);

		kt = sleep_time;
		FUNC3(&kt, HRTIMER_MODE_REL);
		sleep_time *= 2;
		if (sleep_time > NSEC_PER_MSEC)
			sleep_time = NSEC_PER_MSEC;

		if (intr && FUNC4(current))
			return -ERESTARTSYS;
	}

	FUNC0(TASK_RUNNING);

	return timeout - t;
}