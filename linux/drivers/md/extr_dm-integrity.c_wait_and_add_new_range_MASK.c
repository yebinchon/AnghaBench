#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct dm_integrity_range {int waiting; int /*<<< orphan*/  task; int /*<<< orphan*/  wait_entry; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct dm_integrity_c {TYPE_1__ endio_wait; int /*<<< orphan*/  wait_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct dm_integrity_c *ic, struct dm_integrity_range *new_range)
{
	new_range->waiting = true;
	FUNC2(&new_range->wait_entry, &ic->wait_list);
	new_range->task = current;
	do {
		FUNC0(TASK_UNINTERRUPTIBLE);
		FUNC4(&ic->endio_wait.lock);
		FUNC1();
		FUNC3(&ic->endio_wait.lock);
	} while (FUNC5(new_range->waiting));
}