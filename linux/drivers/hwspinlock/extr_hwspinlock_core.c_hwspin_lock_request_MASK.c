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
struct hwspinlock {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HWSPINLOCK_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct hwspinlock*) ; 
 int /*<<< orphan*/  hwspinlock_tree ; 
 int /*<<< orphan*/  hwspinlock_tree_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

struct hwspinlock *FUNC6(void)
{
	struct hwspinlock *hwlock;
	int ret;

	FUNC2(&hwspinlock_tree_lock);

	/* look for an unused lock */
	ret = FUNC5(&hwspinlock_tree, (void **)&hwlock,
						0, 1, HWSPINLOCK_UNUSED);
	if (ret == 0) {
		FUNC4("a free hwspinlock is not available\n");
		hwlock = NULL;
		goto out;
	}

	/* sanity check that should never fail */
	FUNC0(ret > 1);

	/* mark as used and power up */
	ret = FUNC1(hwlock);
	if (ret < 0)
		hwlock = NULL;

out:
	FUNC3(&hwspinlock_tree_lock);
	return hwlock;
}