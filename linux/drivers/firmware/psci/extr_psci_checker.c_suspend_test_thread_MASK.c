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
struct timer_list {int dummy; } ;
struct sched_param {scalar_t__ sched_priority; } ;
struct cpuidle_state {int /*<<< orphan*/  target_residency; } ;
struct cpuidle_driver {int state_count; struct cpuidle_state* states; } ;
struct cpuidle_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAX_RT_PRIO ; 
 int NUM_SUSPEND_CYCLE ; 
 int /*<<< orphan*/  SCHED_FIFO ; 
 int /*<<< orphan*/  SCHED_NORMAL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cpuidle_devices ; 
 struct cpuidle_driver* FUNC2 (struct cpuidle_device*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 (struct timer_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct timer_list*) ; 
 int /*<<< orphan*/  dummy_callback ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct timer_list*,scalar_t__) ; 
 int /*<<< orphan*/  nb_active_threads ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sched_param*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (struct cpuidle_device*,struct cpuidle_driver*,int) ; 
 int /*<<< orphan*/  suspend_threads_done ; 
 int /*<<< orphan*/  suspend_threads_started ; 
 struct cpuidle_device* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct timer_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(void *arg)
{
	int cpu = (long)arg;
	int i, nb_suspend = 0, nb_shallow_sleep = 0, nb_err = 0;
	struct sched_param sched_priority = { .sched_priority = MAX_RT_PRIO-1 };
	struct cpuidle_device *dev;
	struct cpuidle_driver *drv;
	/* No need for an actual callback, we just want to wake up the CPU. */
	struct timer_list wakeup_timer;

	/* Wait for the main thread to give the start signal. */
	FUNC20(&suspend_threads_started);

	/* Set maximum priority to preempt all other threads on this CPU. */
	if (FUNC13(current, SCHED_FIFO, &sched_priority))
		FUNC12("Failed to set suspend thread scheduler on CPU %d\n",
			cpu);

	dev = FUNC17(cpuidle_devices);
	drv = FUNC2(dev);

	FUNC11("CPU %d entering suspend cycles, states 1 through %d\n",
		cpu, drv->state_count - 1);

	FUNC18(&wakeup_timer, dummy_callback, 0);
	for (i = 0; i < NUM_SUSPEND_CYCLE; ++i) {
		int index;
		/*
		 * Test all possible states, except 0 (which is usually WFI and
		 * doesn't use PSCI).
		 */
		for (index = 1; index < drv->state_count; ++index) {
			int ret;
			struct cpuidle_state *state = &drv->states[index];

			/*
			 * Set the timer to wake this CPU up in some time (which
			 * should be largely sufficient for entering suspend).
			 * If the local tick is disabled when entering suspend,
			 * suspend_cpu() takes care of switching to a broadcast
			 * tick, so the timer will still wake us up.
			 */
			FUNC9(&wakeup_timer, jiffies +
				  FUNC19(state->target_residency));

			/* IRQs must be disabled during suspend operations. */
			FUNC7();

			ret = FUNC16(dev, drv, index);

			/*
			 * We have woken up. Re-enable IRQs to handle any
			 * pending interrupt, do not wait until the end of the
			 * loop.
			 */
			FUNC8();

			if (ret == index) {
				++nb_suspend;
			} else if (ret >= 0) {
				/* We did not enter the expected state. */
				++nb_shallow_sleep;
			} else {
				FUNC10("Failed to suspend CPU %d: error %d "
				       "(requested state %d, cycle %d)\n",
				       cpu, ret, index, i);
				++nb_err;
			}
		}
	}

	/*
	 * Disable the timer to make sure that the timer will not trigger
	 * later.
	 */
	FUNC3(&wakeup_timer);
	FUNC4(&wakeup_timer);

	if (FUNC0(&nb_active_threads) == 0)
		FUNC1(&suspend_threads_done);

	/* Give up on RT scheduling and wait for termination. */
	sched_priority.sched_priority = 0;
	if (FUNC13(current, SCHED_NORMAL, &sched_priority))
		FUNC12("Failed to set suspend thread scheduler on CPU %d\n",
			cpu);
	for (;;) {
		/* Needs to be set first to avoid missing a wakeup. */
		FUNC15(TASK_INTERRUPTIBLE);
		if (FUNC6())
			break;
		FUNC14();
	}

	FUNC11("CPU %d suspend test results: success %d, shallow states %d, errors %d\n",
		cpu, nb_suspend, nb_shallow_sleep, nb_err);

	FUNC5();

	return nb_err;
}