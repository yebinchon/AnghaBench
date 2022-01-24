#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hwspinlock {int /*<<< orphan*/  lock; TYPE_2__* bank; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* trylock ) (struct hwspinlock*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
#define  HWLOCK_IN_ATOMIC 131 
#define  HWLOCK_IRQ 130 
#define  HWLOCK_IRQSTATE 129 
#define  HWLOCK_RAW 128 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC8 (struct hwspinlock*) ; 

int FUNC9(struct hwspinlock *hwlock, int mode, unsigned long *flags)
{
	int ret;

	FUNC0(!hwlock);
	FUNC0(!flags && mode == HWLOCK_IRQSTATE);

	/*
	 * This spin_lock{_irq, _irqsave} serves three purposes:
	 *
	 * 1. Disable preemption, in order to minimize the period of time
	 *    in which the hwspinlock is taken. This is important in order
	 *    to minimize the possible polling on the hardware interconnect
	 *    by a remote user of this lock.
	 * 2. Make the hwspinlock SMP-safe (so we can take it from
	 *    additional contexts on the local host).
	 * 3. Ensure that in_atomic/might_sleep checks catch potential
	 *    problems with hwspinlock usage (e.g. scheduler checks like
	 *    'scheduling while atomic' etc.)
	 */
	switch (mode) {
	case HWLOCK_IRQSTATE:
		ret = FUNC4(&hwlock->lock, *flags);
		break;
	case HWLOCK_IRQ:
		ret = FUNC3(&hwlock->lock);
		break;
	case HWLOCK_RAW:
	case HWLOCK_IN_ATOMIC:
		ret = 1;
		break;
	default:
		ret = FUNC2(&hwlock->lock);
		break;
	}

	/* is lock already taken by another context on the local cpu ? */
	if (!ret)
		return -EBUSY;

	/* try to take the hwspinlock device */
	ret = hwlock->bank->ops->trylock(hwlock);

	/* if hwlock is already taken, undo spin_trylock_* and exit */
	if (!ret) {
		switch (mode) {
		case HWLOCK_IRQSTATE:
			FUNC7(&hwlock->lock, *flags);
			break;
		case HWLOCK_IRQ:
			FUNC6(&hwlock->lock);
			break;
		case HWLOCK_RAW:
		case HWLOCK_IN_ATOMIC:
			/* Nothing to do */
			break;
		default:
			FUNC5(&hwlock->lock);
			break;
		}

		return -EBUSY;
	}

	/*
	 * We can be sure the other core's memory operations
	 * are observable to us only _after_ we successfully take
	 * the hwspinlock, and we must make sure that subsequent memory
	 * operations (both reads and writes) will not be reordered before
	 * we actually took the hwspinlock.
	 *
	 * Note: the implicit memory barrier of the spinlock above is too
	 * early, so we need this additional explicit memory barrier.
	 */
	FUNC1();

	return 0;
}