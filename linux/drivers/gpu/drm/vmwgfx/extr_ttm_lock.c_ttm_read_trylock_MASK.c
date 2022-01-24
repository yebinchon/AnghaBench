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
struct ttm_lock {int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_lock*,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(struct ttm_lock *lock, bool interruptible)
{
	int ret = 0;
	bool locked;

	if (interruptible)
		ret = FUNC4
			(lock->queue, FUNC1(lock, &locked));
	else
		FUNC3(lock->queue, FUNC1(lock, &locked));

	if (FUNC2(ret != 0)) {
		FUNC0(locked);
		return ret;
	}

	return (locked) ? 0 : -EBUSY;
}