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
struct seq_file {int dummy; } ;
struct TYPE_3__ {int near_copies; int raid_disks; int far_copies; int far_set_size; scalar_t__ far_offset; } ;
struct r10conf {TYPE_2__* mirrors; TYPE_1__ geo; } ;
struct mddev {int chunk_sectors; scalar_t__ degraded; struct r10conf* private; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  In_sync ; 
 struct md_rdev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct seq_file *seq, struct mddev *mddev)
{
	struct r10conf *conf = mddev->private;
	int i;

	if (conf->geo.near_copies < conf->geo.raid_disks)
		FUNC3(seq, " %dK chunks", mddev->chunk_sectors / 2);
	if (conf->geo.near_copies > 1)
		FUNC3(seq, " %d near-copies", conf->geo.near_copies);
	if (conf->geo.far_copies > 1) {
		if (conf->geo.far_offset)
			FUNC3(seq, " %d offset-copies", conf->geo.far_copies);
		else
			FUNC3(seq, " %d far-copies", conf->geo.far_copies);
		if (conf->geo.far_set_size != conf->geo.raid_disks)
			FUNC3(seq, " %d devices per set", conf->geo.far_set_size);
	}
	FUNC3(seq, " [%d/%d] [", conf->geo.raid_disks,
					conf->geo.raid_disks - mddev->degraded);
	FUNC1();
	for (i = 0; i < conf->geo.raid_disks; i++) {
		struct md_rdev *rdev = FUNC0(conf->mirrors[i].rdev);
		FUNC3(seq, "%s", rdev && FUNC4(In_sync, &rdev->flags) ? "U" : "_");
	}
	FUNC2();
	FUNC3(seq, "]");
}