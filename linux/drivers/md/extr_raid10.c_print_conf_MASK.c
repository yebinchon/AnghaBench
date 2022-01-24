#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int raid_disks; } ;
struct r10conf {TYPE_3__* mirrors; TYPE_2__ geo; TYPE_1__* mddev; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {struct md_rdev* rdev; } ;
struct TYPE_4__ {scalar_t__ degraded; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct r10conf *conf)
{
	int i;
	struct md_rdev *rdev;

	FUNC1("RAID10 conf printout:\n");
	if (!conf) {
		FUNC1("(!conf)\n");
		return;
	}
	FUNC1(" --- wd:%d rd:%d\n", conf->geo.raid_disks - conf->mddev->degraded,
		 conf->geo.raid_disks);

	/* This is only called with ->reconfix_mutex held, so
	 * rcu protection of rdev is not needed */
	for (i = 0; i < conf->geo.raid_disks; i++) {
		char b[BDEVNAME_SIZE];
		rdev = conf->mirrors[i].rdev;
		if (rdev)
			FUNC1(" disk %d, wo:%d, o:%d, dev:%s\n",
				 i, !FUNC2(In_sync, &rdev->flags),
				 !FUNC2(Faulty, &rdev->flags),
				 FUNC0(rdev->bdev,b));
	}
}