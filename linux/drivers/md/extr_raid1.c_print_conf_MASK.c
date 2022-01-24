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
struct r1conf {int raid_disks; TYPE_1__* mirrors; TYPE_2__* mddev; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {scalar_t__ degraded; } ;
struct TYPE_3__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct md_rdev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct r1conf *conf)
{
	int i;

	FUNC1("RAID1 conf printout:\n");
	if (!conf) {
		FUNC1("(!conf)\n");
		return;
	}
	FUNC1(" --- wd:%d rd:%d\n", conf->raid_disks - conf->mddev->degraded,
		 conf->raid_disks);

	FUNC3();
	for (i = 0; i < conf->raid_disks; i++) {
		char b[BDEVNAME_SIZE];
		struct md_rdev *rdev = FUNC2(conf->mirrors[i].rdev);
		if (rdev)
			FUNC1(" disk %d, wo:%d, o:%d, dev:%s\n",
				 i, !FUNC5(In_sync, &rdev->flags),
				 !FUNC5(Faulty, &rdev->flags),
				 FUNC0(rdev->bdev,b));
	}
	FUNC4();
}