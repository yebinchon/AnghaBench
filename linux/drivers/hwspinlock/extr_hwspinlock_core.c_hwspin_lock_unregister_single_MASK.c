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
 int /*<<< orphan*/  hwspinlock_tree ; 
 int /*<<< orphan*/  hwspinlock_tree_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int) ; 
 struct hwspinlock* FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int FUNC4 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct hwspinlock *FUNC5(unsigned int id)
{
	struct hwspinlock *hwlock = NULL;
	int ret;

	FUNC0(&hwspinlock_tree_lock);

	/* make sure the hwspinlock is not in use (tag is set) */
	ret = FUNC4(&hwspinlock_tree, id, HWSPINLOCK_UNUSED);
	if (ret == 0) {
		FUNC2("hwspinlock %d still in use (or not present)\n", id);
		goto out;
	}

	hwlock = FUNC3(&hwspinlock_tree, id);
	if (!hwlock) {
		FUNC2("failed to delete hwspinlock %d\n", id);
		goto out;
	}

out:
	FUNC1(&hwspinlock_tree_lock);
	return hwlock;
}