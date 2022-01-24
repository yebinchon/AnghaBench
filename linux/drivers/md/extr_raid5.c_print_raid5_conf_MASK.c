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
struct r5conf {int level; int raid_disks; struct disk_info* disks; TYPE_1__* mddev; } ;
struct disk_info {TYPE_2__* rdev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {scalar_t__ degraded; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  Faulty ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (struct r5conf *conf)
{
	int i;
	struct disk_info *tmp;

	FUNC1("RAID conf printout:\n");
	if (!conf) {
		FUNC1("(conf==NULL)\n");
		return;
	}
	FUNC1(" --- level:%d rd:%d wd:%d\n", conf->level,
	       conf->raid_disks,
	       conf->raid_disks - conf->mddev->degraded);

	for (i = 0; i < conf->raid_disks; i++) {
		char b[BDEVNAME_SIZE];
		tmp = conf->disks + i;
		if (tmp->rdev)
			FUNC1(" disk %d, o:%d, dev:%s\n",
			       i, !FUNC2(Faulty, &tmp->rdev->flags),
			       FUNC0(tmp->rdev->bdev, b));
	}
}