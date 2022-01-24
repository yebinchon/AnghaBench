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
struct ttm_lock {scalar_t__ rw; scalar_t__ flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC2(struct ttm_lock *lock, bool *locked)
{
	bool block = true;

	*locked = false;

	FUNC0(&lock->lock);
	if (lock->rw >= 0 && lock->flags == 0) {
		++lock->rw;
		block = false;
		*locked = true;
	} else if (lock->flags == 0) {
		block = false;
	}
	FUNC1(&lock->lock);

	return !block;
}