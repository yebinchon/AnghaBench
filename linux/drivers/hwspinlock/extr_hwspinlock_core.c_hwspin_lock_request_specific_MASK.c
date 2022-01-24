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
 unsigned int FUNC2 (struct hwspinlock*) ; 
 int /*<<< orphan*/  hwspinlock_tree ; 
 int /*<<< orphan*/  hwspinlock_tree_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int) ; 
 struct hwspinlock* FUNC6 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

struct hwspinlock *FUNC8(unsigned int id)
{
	struct hwspinlock *hwlock;
	int ret;

	FUNC3(&hwspinlock_tree_lock);

	/* make sure this hwspinlock exists */
	hwlock = FUNC6(&hwspinlock_tree, id);
	if (!hwlock) {
		FUNC5("hwspinlock %u does not exist\n", id);
		goto out;
	}

	/* sanity check (this shouldn't happen) */
	FUNC0(FUNC2(hwlock) != id);

	/* make sure this hwspinlock is unused */
	ret = FUNC7(&hwspinlock_tree, id, HWSPINLOCK_UNUSED);
	if (ret == 0) {
		FUNC5("hwspinlock %u is already in use\n", id);
		hwlock = NULL;
		goto out;
	}

	/* mark as used and power up */
	ret = FUNC1(hwlock);
	if (ret < 0)
		hwlock = NULL;

out:
	FUNC4(&hwspinlock_tree_lock);
	return hwlock;
}