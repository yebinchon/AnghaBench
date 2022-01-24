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
struct r5conf {scalar_t__ max_degraded; scalar_t__ raid_disks; int /*<<< orphan*/  device_lock; int /*<<< orphan*/  recovery_disabled; } ;
struct mddev {scalar_t__ degraded; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  recovery; int /*<<< orphan*/  recovery_disabled; struct r5conf* private; } ;
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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*,struct md_rdev*) ; 
 scalar_t__ FUNC7 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct mddev *mddev, struct md_rdev *rdev)
{
	char b[BDEVNAME_SIZE];
	struct r5conf *conf = mddev->private;
	unsigned long flags;
	FUNC5("raid456: error called\n");

	FUNC10(&conf->device_lock, flags);

	if (FUNC12(In_sync, &rdev->flags) &&
	    mddev->degraded == conf->max_degraded) {
		/*
		 * Don't allow to achieve failed state
		 * Don't try to recover this device
		 */
		conf->recovery_disabled = mddev->recovery_disabled;
		FUNC11(&conf->device_lock, flags);
		return;
	}

	FUNC8(Faulty, &rdev->flags);
	FUNC2(In_sync, &rdev->flags);
	mddev->degraded = FUNC7(conf);
	FUNC11(&conf->device_lock, flags);
	FUNC8(MD_RECOVERY_INTR, &mddev->recovery);

	FUNC8(Blocked, &rdev->flags);
	FUNC9(&mddev->sb_flags, 0,
		      FUNC0(MD_SB_CHANGE_DEVS) | FUNC0(MD_SB_CHANGE_PENDING));
	FUNC4("md/raid:%s: Disk failure on %s, disabling device.\n"
		"md/raid:%s: Operation continuing on %d devices.\n",
		FUNC3(mddev),
		FUNC1(rdev->bdev, b),
		FUNC3(mddev),
		conf->raid_disks - mddev->degraded);
	FUNC6(mddev, rdev);
}