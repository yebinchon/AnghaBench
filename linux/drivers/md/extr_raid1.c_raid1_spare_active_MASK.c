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
struct r1conf {int raid_disks; int /*<<< orphan*/  device_lock; TYPE_1__* mirrors; } ;
struct mddev {int degraded; struct r1conf* private; } ;
struct md_rdev {scalar_t__ recovery_offset; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Candidate ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  FUNC0 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mddev *mddev)
{
	int i;
	struct r1conf *conf = mddev->private;
	int count = 0;
	unsigned long flags;

	/*
	 * Find all failed disks within the RAID1 configuration
	 * and mark them readable.
	 * Called under mddev lock, so rcu protection not needed.
	 * device_lock used to avoid races with raid1_end_read_request
	 * which expects 'In_sync' flags and ->degraded to be consistent.
	 */
	FUNC2(&conf->device_lock, flags);
	for (i = 0; i < conf->raid_disks; i++) {
		struct md_rdev *rdev = conf->mirrors[i].rdev;
		struct md_rdev *repl = conf->mirrors[conf->raid_disks + i].rdev;
		if (repl
		    && !FUNC7(Candidate, &repl->flags)
		    && repl->recovery_offset == MaxSector
		    && !FUNC7(Faulty, &repl->flags)
		    && !FUNC6(In_sync, &repl->flags)) {
			/* replacement has just become active */
			if (!rdev ||
			    !FUNC5(In_sync, &rdev->flags))
				count++;
			if (rdev) {
				/* Replaced device not technically
				 * faulty, but we need to be sure
				 * it gets removed and never re-added
				 */
				FUNC1(Faulty, &rdev->flags);
				FUNC4(
					rdev->sysfs_state);
			}
		}
		if (rdev
		    && rdev->recovery_offset == MaxSector
		    && !FUNC7(Faulty, &rdev->flags)
		    && !FUNC6(In_sync, &rdev->flags)) {
			count++;
			FUNC4(rdev->sysfs_state);
		}
	}
	mddev->degraded -= count;
	FUNC3(&conf->device_lock, flags);

	FUNC0(conf);
	return count;
}