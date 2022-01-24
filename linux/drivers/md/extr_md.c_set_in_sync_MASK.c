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
struct mddev {int in_sync; scalar_t__ sync_checkers; int safemode; int /*<<< orphan*/  writes_pending; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_SB_CHANGE_CLEAN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC9(struct mddev *mddev)
{
	FUNC0(&mddev->lock);
	if (!mddev->in_sync) {
		mddev->sync_checkers++;
		FUNC7(&mddev->lock);
		FUNC2(&mddev->writes_pending);
		FUNC6(&mddev->lock);
		if (!mddev->in_sync &&
		    FUNC1(&mddev->writes_pending)) {
			mddev->in_sync = 1;
			/*
			 * Ensure ->in_sync is visible before we clear
			 * ->sync_checkers.
			 */
			FUNC5();
			FUNC4(MD_SB_CHANGE_CLEAN, &mddev->sb_flags);
			FUNC8(mddev->sysfs_state);
		}
		if (--mddev->sync_checkers == 0)
			FUNC3(&mddev->writes_pending);
	}
	if (mddev->safemode == 1)
		mddev->safemode = 0;
	return mddev->in_sync;
}