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
struct mpconf {int raid_disks; int /*<<< orphan*/  device_lock; } ;
struct mddev {int degraded; int /*<<< orphan*/  sb_flags; struct mpconf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7 (struct mddev *mddev, struct md_rdev *rdev)
{
	struct mpconf *conf = mddev->private;
	char b[BDEVNAME_SIZE];

	if (conf->raid_disks - mddev->degraded <= 1) {
		/*
		 * Uh oh, we can do nothing if this is our last path, but
		 * first check if this is a queued request for a device
		 * which has just failed.
		 */
		FUNC2("multipath: only one IO path left and IO error.\n");
		/* leave it active... it's all we have */
		return;
	}
	/*
	 * Mark disk as unusable
	 */
	if (FUNC6(In_sync, &rdev->flags)) {
		unsigned long flags;
		FUNC4(&conf->device_lock, flags);
		mddev->degraded++;
		FUNC5(&conf->device_lock, flags);
	}
	FUNC3(Faulty, &rdev->flags);
	FUNC3(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
	FUNC1("multipath: IO failure on %s, disabling IO path.\n"
	       "multipath: Operation continuing on %d IO paths.\n",
	       FUNC0(rdev->bdev, b),
	       conf->raid_disks - mddev->degraded);
}