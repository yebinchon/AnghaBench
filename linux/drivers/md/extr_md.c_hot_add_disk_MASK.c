#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mddev {scalar_t__ major_version; int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; int /*<<< orphan*/  sb_flags; scalar_t__ persistent; TYPE_1__* pers; } ;
struct md_rdev {int sb_start; int sectors; int desc_nr; int saved_raid_disk; int raid_disk; int /*<<< orphan*/  flags; TYPE_2__* bdev; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_4__ {int /*<<< orphan*/  bd_inode; } ;
struct TYPE_3__ {int /*<<< orphan*/  hot_add_disk; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  Faulty ; 
 scalar_t__ FUNC0 (struct md_rdev*) ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  FUNC1 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,char*) ; 
 int FUNC3 (struct md_rdev*,struct mddev*) ; 
 int FUNC4 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct md_rdev*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 struct md_rdev* FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(struct mddev *mddev, dev_t dev)
{
	char b[BDEVNAME_SIZE];
	int err;
	struct md_rdev *rdev;

	if (!mddev->pers)
		return -ENODEV;

	if (mddev->major_version != 0) {
		FUNC13("%s: HOT_ADD may only be used with version-0 superblocks.\n",
			FUNC12(mddev));
		return -EINVAL;
	}
	if (!mddev->pers->hot_add_disk) {
		FUNC13("%s: personality does not support diskops!\n",
			FUNC12(mddev));
		return -EINVAL;
	}

	rdev = FUNC8(dev, -1, 0);
	if (FUNC0(rdev)) {
		FUNC13("md: error, md_import_device() returned %ld\n",
			FUNC1(rdev));
		return -EINVAL;
	}

	if (mddev->persistent)
		rdev->sb_start = FUNC4(rdev);
	else
		rdev->sb_start = FUNC7(rdev->bdev->bd_inode) / 512;

	rdev->sectors = rdev->sb_start;

	if (FUNC15(Faulty, &rdev->flags)) {
		FUNC13("md: can not hot-add faulty %s disk to %s!\n",
			FUNC2(rdev->bdev,b), FUNC12(mddev));
		err = -EINVAL;
		goto abort_export;
	}

	FUNC5(In_sync, &rdev->flags);
	rdev->desc_nr = -1;
	rdev->saved_raid_disk = -1;
	err = FUNC3(rdev, mddev);
	if (err)
		goto abort_export;

	/*
	 * The rest should better be atomic, we can have disk failures
	 * noticed in interrupt contexts ...
	 */

	rdev->raid_disk = -1;

	FUNC14(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
	if (!mddev->thread)
		FUNC10(mddev, 1);
	/*
	 * Kick recovery, maybe this spare has to be added to the
	 * array immediately.
	 */
	FUNC14(MD_RECOVERY_NEEDED, &mddev->recovery);
	FUNC11(mddev->thread);
	FUNC9(mddev);
	return 0;

abort_export:
	FUNC6(rdev);
	return err;
}