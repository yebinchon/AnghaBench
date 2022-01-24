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
struct multipath_info {TYPE_1__* rdev; } ;
struct mpconf {int raid_disks; struct multipath_info* multipaths; TYPE_2__* mddev; } ;
struct TYPE_4__ {scalar_t__ degraded; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3 (struct mpconf *conf)
{
	int i;
	struct multipath_info *tmp;

	FUNC1("MULTIPATH conf printout:\n");
	if (!conf) {
		FUNC1("(conf==NULL)\n");
		return;
	}
	FUNC1(" --- wd:%d rd:%d\n", conf->raid_disks - conf->mddev->degraded,
		 conf->raid_disks);

	for (i = 0; i < conf->raid_disks; i++) {
		char b[BDEVNAME_SIZE];
		tmp = conf->multipaths + i;
		if (tmp->rdev)
			FUNC1(" disk%d, o:%d, dev:%s\n",
				 i,!FUNC2(Faulty, &tmp->rdev->flags),
				 FUNC0(tmp->rdev->bdev,b));
	}
}