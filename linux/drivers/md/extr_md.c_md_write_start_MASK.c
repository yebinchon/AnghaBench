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
struct mddev {int ro; int safemode; int /*<<< orphan*/  writes_pending; int /*<<< orphan*/  sb_flags; scalar_t__ suspended; int /*<<< orphan*/  sb_wait; int /*<<< orphan*/  has_superblocks; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  lock; int /*<<< orphan*/  thread; scalar_t__ in_sync; scalar_t__ sync_checkers; int /*<<< orphan*/  sync_thread; int /*<<< orphan*/  recovery; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_SB_CHANGE_CLEAN ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 

bool FUNC14(struct mddev *mddev, struct bio *bi)
{
	int did_change = 0;

	if (FUNC1(bi) != WRITE)
		return true;

	FUNC0(mddev->ro == 1);
	if (mddev->ro == 2) {
		/* need to switch to read/write */
		mddev->ro = 0;
		FUNC7(MD_RECOVERY_NEEDED, &mddev->recovery);
		FUNC2(mddev->thread);
		FUNC2(mddev->sync_thread);
		did_change = 1;
	}
	FUNC5();
	FUNC3(&mddev->writes_pending);
	FUNC8(); /* Match smp_mb in set_in_sync() */
	if (mddev->safemode == 1)
		mddev->safemode = 0;
	/* sync_checkers is always 0 when writes_pending is in per-cpu mode */
	if (mddev->in_sync || mddev->sync_checkers) {
		FUNC9(&mddev->lock);
		if (mddev->in_sync) {
			mddev->in_sync = 0;
			FUNC7(MD_SB_CHANGE_CLEAN, &mddev->sb_flags);
			FUNC7(MD_SB_CHANGE_PENDING, &mddev->sb_flags);
			FUNC2(mddev->thread);
			did_change = 1;
		}
		FUNC10(&mddev->lock);
	}
	FUNC6();
	if (did_change)
		FUNC11(mddev->sysfs_state);
	if (!mddev->has_superblocks)
		return true;
	FUNC13(mddev->sb_wait,
		   !FUNC12(MD_SB_CHANGE_PENDING, &mddev->sb_flags) ||
		   mddev->suspended);
	if (FUNC12(MD_SB_CHANGE_PENDING, &mddev->sb_flags)) {
		FUNC4(&mddev->writes_pending);
		return false;
	}
	return true;
}