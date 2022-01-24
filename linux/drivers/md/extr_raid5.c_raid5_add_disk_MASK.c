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
struct r5conf {int raid_disks; scalar_t__ recovery_disabled; int fullsync; struct disk_info* disks; scalar_t__ log; } ;
struct mddev {scalar_t__ recovery_disabled; struct r5conf* private; } ;
struct md_rdev {int raid_disk; int saved_raid_disk; int /*<<< orphan*/  flags; } ;
struct disk_info {TYPE_1__* replacement; TYPE_1__* rdev; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  Journal ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct r5conf*) ; 
 int FUNC2 (struct r5conf*,struct md_rdev*,int) ; 
 int FUNC3 (struct r5conf*,struct md_rdev*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct r5conf*) ; 
 int FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mddev *mddev, struct md_rdev *rdev)
{
	struct r5conf *conf = mddev->private;
	int ret, err = -EEXIST;
	int disk;
	struct disk_info *p;
	int first = 0;
	int last = conf->raid_disks - 1;

	if (FUNC8(Journal, &rdev->flags)) {
		if (conf->log)
			return -EBUSY;

		rdev->raid_disk = 0;
		/*
		 * The array is in readonly mode if journal is missing, so no
		 * write requests running. We should be safe
		 */
		ret = FUNC2(conf, rdev, false);
		if (ret)
			return ret;

		ret = FUNC5(conf->log);
		if (ret)
			return ret;

		return 0;
	}
	if (mddev->recovery_disabled == conf->recovery_disabled)
		return -EBUSY;

	if (rdev->saved_raid_disk < 0 && FUNC1(conf))
		/* no point adding a device */
		return -EINVAL;

	if (rdev->raid_disk >= 0)
		first = last = rdev->raid_disk;

	/*
	 * find the disk ... but prefer rdev->saved_raid_disk
	 * if possible.
	 */
	if (rdev->saved_raid_disk >= 0 &&
	    rdev->saved_raid_disk >= first &&
	    conf->disks[rdev->saved_raid_disk].rdev == NULL)
		first = rdev->saved_raid_disk;

	for (disk = first; disk <= last; disk++) {
		p = conf->disks + disk;
		if (p->rdev == NULL) {
			FUNC0(In_sync, &rdev->flags);
			rdev->raid_disk = disk;
			if (rdev->saved_raid_disk != disk)
				conf->fullsync = 1;
			FUNC6(p->rdev, rdev);

			err = FUNC3(conf, rdev, true);

			goto out;
		}
	}
	for (disk = first; disk <= last; disk++) {
		p = conf->disks + disk;
		if (FUNC8(WantReplacement, &p->rdev->flags) &&
		    p->replacement == NULL) {
			FUNC0(In_sync, &rdev->flags);
			FUNC7(Replacement, &rdev->flags);
			rdev->raid_disk = disk;
			err = 0;
			conf->fullsync = 1;
			FUNC6(p->replacement, rdev);
			break;
		}
	}
out:
	FUNC4(conf);
	return err;
}