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
struct md_thread {int /*<<< orphan*/  (* run ) (struct md_thread*) ;int /*<<< orphan*/  flags; int /*<<< orphan*/  timeout; int /*<<< orphan*/  wqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  THREAD_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__ FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct md_thread*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void *arg)
{
	struct md_thread *thread = arg;

	/*
	 * md_thread is a 'system-thread', it's priority should be very
	 * high. We avoid resource deadlocks individually in each
	 * raid personality. (RAID5 does preallocation) We also use RR and
	 * the very same RT priority as kswapd, thus we will never get
	 * into a priority inversion deadlock.
	 *
	 * we definitely have to have equal or higher priority than
	 * bdflush, otherwise bdflush will deadlock if there are too
	 * many dirty RAID5 blocks.
	 */

	FUNC0(SIGKILL);
	while (!FUNC5()) {

		/* We need to wait INTERRUPTIBLE so that
		 * we don't add to the load-average.
		 * That means we need to be sure no signals are
		 * pending
		 */
		if (FUNC6(current))
			FUNC2(current);

		FUNC9
			(thread->wqueue,
			 FUNC8(THREAD_WAKEUP, &thread->flags)
			 || FUNC5() || FUNC4(),
			 thread->timeout);

		FUNC1(THREAD_WAKEUP, &thread->flags);
		if (FUNC4())
			FUNC3();
		if (!FUNC5())
			thread->run(thread);
	}

	return 0;
}