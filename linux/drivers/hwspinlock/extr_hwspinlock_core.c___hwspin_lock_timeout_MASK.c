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
struct hwspinlock {TYPE_2__* bank; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* relax ) (struct hwspinlock*) ;} ;

/* Variables and functions */
 int EBUSY ; 
 int ETIMEDOUT ; 
 int HWLOCK_IN_ATOMIC ; 
 scalar_t__ HWSPINLOCK_RETRY_DELAY_US ; 
 int FUNC0 (struct hwspinlock*,int,unsigned long*) ; 
 unsigned long jiffies ; 
 unsigned long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct hwspinlock*) ; 
 scalar_t__ FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

int FUNC5(struct hwspinlock *hwlock, unsigned int to,
					int mode, unsigned long *flags)
{
	int ret;
	unsigned long expire, atomic_delay = 0;

	expire = FUNC1(to) + jiffies;

	for (;;) {
		/* Try to take the hwspinlock */
		ret = FUNC0(hwlock, mode, flags);
		if (ret != -EBUSY)
			break;

		/*
		 * The lock is already taken, let's check if the user wants
		 * us to try again
		 */
		if (mode == HWLOCK_IN_ATOMIC) {
			FUNC4(HWSPINLOCK_RETRY_DELAY_US);
			atomic_delay += HWSPINLOCK_RETRY_DELAY_US;
			if (atomic_delay > to * 1000)
				return -ETIMEDOUT;
		} else {
			if (FUNC3(expire))
				return -ETIMEDOUT;
		}

		/*
		 * Allow platform-specific relax handlers to prevent
		 * hogging the interconnect (no sleeping, though)
		 */
		if (hwlock->bank->ops->relax)
			hwlock->bank->ops->relax(hwlock);
	}

	return ret;
}