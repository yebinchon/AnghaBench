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
 int EEXIST ; 
 int /*<<< orphan*/  HWSPINLOCK_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  hwspinlock_tree ; 
 int /*<<< orphan*/  hwspinlock_tree_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,struct hwspinlock*) ; 
 struct hwspinlock* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct hwspinlock *hwlock, int id)
{
	struct hwspinlock *tmp;
	int ret;

	FUNC1(&hwspinlock_tree_lock);

	ret = FUNC4(&hwspinlock_tree, id, hwlock);
	if (ret) {
		if (ret == -EEXIST)
			FUNC3("hwspinlock id %d already exists!\n", id);
		goto out;
	}

	/* mark this hwspinlock as available */
	tmp = FUNC5(&hwspinlock_tree, id, HWSPINLOCK_UNUSED);

	/* self-sanity check which should never fail */
	FUNC0(tmp != hwlock);

out:
	FUNC2(&hwspinlock_tree_lock);
	return 0;
}