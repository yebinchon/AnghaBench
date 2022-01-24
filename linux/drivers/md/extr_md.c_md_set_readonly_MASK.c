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
struct mddev {int ro; int /*<<< orphan*/  open_mutex; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; int /*<<< orphan*/  gendisk; scalar_t__ pers; TYPE_1__* sync_thread; int /*<<< orphan*/  openers; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  sb_wait; scalar_t__ external; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tsk; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENXIO ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_RECOVERY_RUNNING ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  resync_wait ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct mddev *mddev, struct block_device *bdev)
{
	int err = 0;
	int did_freeze = 0;

	if (!FUNC13(MD_RECOVERY_FROZEN, &mddev->recovery)) {
		did_freeze = 1;
		FUNC10(MD_RECOVERY_FROZEN, &mddev->recovery);
		FUNC3(mddev->thread);
	}
	if (FUNC13(MD_RECOVERY_RUNNING, &mddev->recovery))
		FUNC10(MD_RECOVERY_INTR, &mddev->recovery);
	if (mddev->sync_thread)
		/* Thread might be blocked waiting for metadata update
		 * which will now never happen */
		FUNC15(mddev->sync_thread->tsk);

	if (mddev->external && FUNC13(MD_SB_CHANGE_PENDING, &mddev->sb_flags))
		return -EBUSY;
	FUNC5(mddev);
	FUNC14(resync_wait, !FUNC13(MD_RECOVERY_RUNNING,
					  &mddev->recovery));
	FUNC14(mddev->sb_wait,
		   !FUNC13(MD_SB_CHANGE_PENDING, &mddev->sb_flags));
	FUNC4(mddev);

	FUNC7(&mddev->open_mutex);
	if ((mddev->pers && FUNC1(&mddev->openers) > !!bdev) ||
	    mddev->sync_thread ||
	    FUNC13(MD_RECOVERY_RUNNING, &mddev->recovery)) {
		FUNC9("md: %s still in use.\n",FUNC6(mddev));
		if (did_freeze) {
			FUNC2(MD_RECOVERY_FROZEN, &mddev->recovery);
			FUNC10(MD_RECOVERY_NEEDED, &mddev->recovery);
			FUNC3(mddev->thread);
		}
		err = -EBUSY;
		goto out;
	}
	if (mddev->pers) {
		FUNC0(mddev);

		err  = -ENXIO;
		if (mddev->ro==1)
			goto out;
		mddev->ro = 1;
		FUNC11(mddev->gendisk, 1);
		FUNC2(MD_RECOVERY_FROZEN, &mddev->recovery);
		FUNC10(MD_RECOVERY_NEEDED, &mddev->recovery);
		FUNC3(mddev->thread);
		FUNC12(mddev->sysfs_state);
		err = 0;
	}
out:
	FUNC8(&mddev->open_mutex);
	return err;
}