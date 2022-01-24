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
struct r1conf {int raid_disks; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  recovery_disabled; } ;
struct mddev {int degraded; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  recovery; int /*<<< orphan*/  recovery_disabled; int /*<<< orphan*/  fail_last_dev; struct r1conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Blocked ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct mddev *mddev, struct md_rdev *rdev)
{
	char b[BDEVNAME_SIZE];
	struct r1conf *conf = mddev->private;
	unsigned long flags;

	/*
	 * If it is not operational, then we have already marked it as dead
	 * else if it is the last working disks with "fail_last_dev == false",
	 * ignore the error, let the next level up know.
	 * else mark the drive as failed
	 */
	FUNC6(&conf->device_lock, flags);
	if (FUNC9(In_sync, &rdev->flags) && !mddev->fail_last_dev
	    && (conf->raid_disks - mddev->degraded) == 1) {
		/*
		 * Don't fail the drive, act as though we were just a
		 * normal single drive.
		 * However don't try a recovery from this drive as
		 * it is very likely to fail.
		 */
		conf->recovery_disabled = mddev->recovery_disabled;
		FUNC7(&conf->device_lock, flags);
		return;
	}
	FUNC4(Blocked, &rdev->flags);
	if (FUNC8(In_sync, &rdev->flags))
		mddev->degraded++;
	FUNC4(Faulty, &rdev->flags);
	FUNC7(&conf->device_lock, flags);
	/*
	 * if recovery is running, make sure it aborts.
	 */
	FUNC4(MD_RECOVERY_INTR, &mddev->recovery);
	FUNC5(&mddev->sb_flags, 0,
		      FUNC0(MD_SB_CHANGE_DEVS) | FUNC0(MD_SB_CHANGE_PENDING));
	FUNC3("md/raid1:%s: Disk failure on %s, disabling device.\n"
		"md/raid1:%s: Operation continuing on %d devices.\n",
		FUNC2(mddev), FUNC1(rdev->bdev, b),
		FUNC2(mddev), conf->raid_disks - mddev->degraded);
}