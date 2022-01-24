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
struct mddev {int safemode; int /*<<< orphan*/  lock; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  sysfs_state; scalar_t__ safemode_delay; scalar_t__ in_sync; TYPE_1__* pers; scalar_t__ ro; } ;
struct TYPE_2__ {int /*<<< orphan*/  sync_request; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_SB_CHANGE_CLEAN ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

void FUNC7(struct mddev *mddev)
{
	if (!mddev->pers)
		return;
	if (mddev->ro)
		return;
	if (!mddev->pers->sync_request)
		return;

	FUNC2(&mddev->lock);
	if (mddev->in_sync) {
		mddev->in_sync = 0;
		FUNC1(MD_SB_CHANGE_CLEAN, &mddev->sb_flags);
		FUNC1(MD_SB_CHANGE_PENDING, &mddev->sb_flags);
		if (mddev->safemode_delay &&
		    mddev->safemode == 0)
			mddev->safemode = 1;
		FUNC3(&mddev->lock);
		FUNC0(mddev, 0);
		FUNC4(mddev->sysfs_state);
		/* wait for the dirty state to be recorded in the metadata */
		FUNC6(mddev->sb_wait,
			   !FUNC5(MD_SB_CHANGE_PENDING, &mddev->sb_flags));
	} else
		FUNC3(&mddev->lock);
}