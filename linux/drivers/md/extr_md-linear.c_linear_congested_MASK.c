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
struct request_queue {int /*<<< orphan*/  backing_dev_info; } ;
struct mddev {int /*<<< orphan*/  private; } ;
struct linear_conf {int raid_disks; TYPE_2__* disks; } ;
struct TYPE_4__ {TYPE_1__* rdev; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct linear_conf* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(struct mddev *mddev, int bits)
{
	struct linear_conf *conf;
	int i, ret = 0;

	FUNC3();
	conf = FUNC2(mddev->private);

	for (i = 0; i < conf->raid_disks && !ret ; i++) {
		struct request_queue *q = FUNC0(conf->disks[i].rdev->bdev);
		ret |= FUNC1(q->backing_dev_info, bits);
	}

	FUNC4();
	return ret;
}