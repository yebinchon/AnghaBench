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
struct mddev {scalar_t__ ctime; int /*<<< orphan*/  del_work; int /*<<< orphan*/  all_mddevs; int /*<<< orphan*/  hold_active; int /*<<< orphan*/  disks; int /*<<< orphan*/  raid_disks; int /*<<< orphan*/  active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  all_mddevs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  md_misc_wq ; 
 int /*<<< orphan*/  mddev_delayed_delete ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct mddev *mddev)
{
	if (!FUNC1(&mddev->active, &all_mddevs_lock))
		return;
	if (!mddev->raid_disks && FUNC3(&mddev->disks) &&
	    mddev->ctime == 0 && !mddev->hold_active) {
		/* Array is not configured at all, and not held active,
		 * so destroy it */
		FUNC2(&mddev->all_mddevs);

		/*
		 * Call queue_work inside the spinlock so that
		 * flush_workqueue() after mddev_find will succeed in waiting
		 * for the work to be done.
		 */
		FUNC0(&mddev->del_work, mddev_delayed_delete);
		FUNC4(md_misc_wq, &mddev->del_work);
	}
	FUNC5(&all_mddevs_lock);
}