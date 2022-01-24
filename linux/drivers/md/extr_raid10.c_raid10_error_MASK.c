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
struct TYPE_2__ {scalar_t__ raid_disks; } ;
struct r10conf {TYPE_1__ geo; int /*<<< orphan*/  device_lock; } ;
struct mddev {scalar_t__ degraded; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  recovery; int /*<<< orphan*/  fail_last_dev; struct r10conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; int /*<<< orphan*/  raid_disk; } ;

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
 int /*<<< orphan*/  FUNC2 (struct r10conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct mddev *mddev, struct md_rdev *rdev)
{
	char b[BDEVNAME_SIZE];
	struct r10conf *conf = mddev->private;
	unsigned long flags;

	/*
	 * If it is not operational, then we have already marked it as dead
	 * else if it is the last working disks with "fail_last_dev == false",
	 * ignore the error, let the next level up know.
	 * else mark the drive as failed
	 */
	FUNC7(&conf->device_lock, flags);
	if (FUNC10(In_sync, &rdev->flags) && !mddev->fail_last_dev
	    && !FUNC2(conf, rdev->raid_disk)) {
		/*
		 * Don't fail the drive, just return an IO error.
		 */
		FUNC8(&conf->device_lock, flags);
		return;
	}
	if (FUNC9(In_sync, &rdev->flags))
		mddev->degraded++;
	/*
	 * If recovery is running, make sure it aborts.
	 */
	FUNC5(MD_RECOVERY_INTR, &mddev->recovery);
	FUNC5(Blocked, &rdev->flags);
	FUNC5(Faulty, &rdev->flags);
	FUNC6(&mddev->sb_flags, 0,
		      FUNC0(MD_SB_CHANGE_DEVS) | FUNC0(MD_SB_CHANGE_PENDING));
	FUNC8(&conf->device_lock, flags);
	FUNC4("md/raid10:%s: Disk failure on %s, disabling device.\n"
		"md/raid10:%s: Operation continuing on %d devices.\n",
		FUNC3(mddev), FUNC1(rdev->bdev, b),
		FUNC3(mddev), conf->geo.raid_disks - mddev->degraded);
}