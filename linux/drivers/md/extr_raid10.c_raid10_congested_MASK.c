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
struct request_queue {int /*<<< orphan*/  backing_dev_info; } ;
struct TYPE_5__ {int raid_disks; } ;
struct TYPE_4__ {int raid_disks; } ;
struct r10conf {scalar_t__ pending_count; TYPE_3__* mirrors; TYPE_2__ prev; TYPE_1__ geo; } ;
struct mddev {struct r10conf* private; } ;
struct md_rdev {int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int WB_async_congested ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ max_queued_requests ; 
 struct md_rdev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mddev *mddev, int bits)
{
	struct r10conf *conf = mddev->private;
	int i, ret = 0;

	if ((bits & (1 << WB_async_congested)) &&
	    conf->pending_count >= max_queued_requests)
		return 1;

	FUNC3();
	for (i = 0;
	     (i < conf->geo.raid_disks || i < conf->prev.raid_disks)
		     && ret == 0;
	     i++) {
		struct md_rdev *rdev = FUNC2(conf->mirrors[i].rdev);
		if (rdev && !FUNC5(Faulty, &rdev->flags)) {
			struct request_queue *q = FUNC0(rdev->bdev);

			ret |= FUNC1(q->backing_dev_info, bits);
		}
	}
	FUNC4();
	return ret;
}