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
struct raid1_info {TYPE_1__* rdev; scalar_t__ head_position; } ;
struct r1conf {int raid_disks; scalar_t__ recovery_disabled; int fullsync; struct raid1_info* mirrors; } ;
struct mddev {scalar_t__ recovery_disabled; scalar_t__ queue; scalar_t__ gendisk; struct r1conf* private; } ;
struct md_rdev {int raid_disk; int saved_raid_disk; int data_offset; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int EEXIST ; 
 int ENXIO ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  QUEUE_FLAG_DISCARD ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (struct r1conf*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct mddev *mddev, struct md_rdev *rdev)
{
	struct r1conf *conf = mddev->private;
	int err = -EEXIST;
	int mirror = 0;
	struct raid1_info *p;
	int first = 0;
	int last = conf->raid_disks - 1;

	if (mddev->recovery_disabled == conf->recovery_disabled)
		return -EBUSY;

	if (FUNC5(rdev, mddev))
		return -ENXIO;

	if (rdev->raid_disk >= 0)
		first = last = rdev->raid_disk;

	/*
	 * find the disk ... but prefer rdev->saved_raid_disk
	 * if possible.
	 */
	if (rdev->saved_raid_disk >= 0 &&
	    rdev->saved_raid_disk >= first &&
	    rdev->saved_raid_disk < conf->raid_disks &&
	    conf->mirrors[rdev->saved_raid_disk].rdev == NULL)
		first = last = rdev->saved_raid_disk;

	for (mirror = first; mirror <= last; mirror++) {
		p = conf->mirrors + mirror;
		if (!p->rdev) {
			if (mddev->gendisk)
				FUNC4(mddev->gendisk, rdev->bdev,
						  rdev->data_offset << 9);

			p->head_position = 0;
			rdev->raid_disk = mirror;
			err = 0;
			/* As all devices are equivalent, we don't need a full recovery
			 * if this was recently any drive of the array
			 */
			if (rdev->saved_raid_disk < 0)
				conf->fullsync = 1;
			FUNC7(p->rdev, rdev);
			break;
		}
		if (FUNC9(WantReplacement, &p->rdev->flags) &&
		    p[conf->raid_disks].rdev == NULL) {
			/* Add this device as a replacement */
			FUNC3(In_sync, &rdev->flags);
			FUNC8(Replacement, &rdev->flags);
			rdev->raid_disk = mirror;
			err = 0;
			conf->fullsync = 1;
			FUNC7(p[conf->raid_disks].rdev, rdev);
			break;
		}
	}
	if (mddev->queue && FUNC1(FUNC0(rdev->bdev)))
		FUNC2(QUEUE_FLAG_DISCARD, mddev->queue);
	FUNC6(conf);
	return err;
}