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
struct r5conf {int raid_disks; int /*<<< orphan*/  device_lock; struct disk_info* disks; } ;
struct mddev {int /*<<< orphan*/  degraded; struct r5conf* private; } ;
struct disk_info {TYPE_2__* rdev; TYPE_1__* replacement; } ;
struct TYPE_4__ {scalar_t__ recovery_offset; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ recovery_offset; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  FUNC0 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC1 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mddev *mddev)
{
	int i;
	struct r5conf *conf = mddev->private;
	struct disk_info *tmp;
	int count = 0;
	unsigned long flags;

	for (i = 0; i < conf->raid_disks; i++) {
		tmp = conf->disks + i;
		if (tmp->replacement
		    && tmp->replacement->recovery_offset == MaxSector
		    && !FUNC8(Faulty, &tmp->replacement->flags)
		    && !FUNC7(In_sync, &tmp->replacement->flags)) {
			/* Replacement has just become active. */
			if (!tmp->rdev
			    || !FUNC6(In_sync, &tmp->rdev->flags))
				count++;
			if (tmp->rdev) {
				/* Replaced device not technically faulty,
				 * but we need to be sure it gets removed
				 * and never re-added.
				 */
				FUNC2(Faulty, &tmp->rdev->flags);
				FUNC5(
					tmp->rdev->sysfs_state);
			}
			FUNC5(tmp->replacement->sysfs_state);
		} else if (tmp->rdev
		    && tmp->rdev->recovery_offset == MaxSector
		    && !FUNC8(Faulty, &tmp->rdev->flags)
		    && !FUNC7(In_sync, &tmp->rdev->flags)) {
			count++;
			FUNC5(tmp->rdev->sysfs_state);
		}
	}
	FUNC3(&conf->device_lock, flags);
	mddev->degraded = FUNC1(conf);
	FUNC4(&conf->device_lock, flags);
	FUNC0(conf);
	return count;
}