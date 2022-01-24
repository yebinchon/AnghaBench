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
struct seq_file {int dummy; } ;
struct mpconf {int raid_disks; TYPE_1__* multipaths; } ;
struct mddev {scalar_t__ degraded; struct mpconf* private; } ;
struct md_rdev {int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  In_sync ; 
 struct md_rdev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,char) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct seq_file *seq, struct mddev *mddev)
{
	struct mpconf *conf = mddev->private;
	int i;

	FUNC3 (seq, " [%d/%d] [", conf->raid_disks,
		    conf->raid_disks - mddev->degraded);
	FUNC1();
	for (i = 0; i < conf->raid_disks; i++) {
		struct md_rdev *rdev = FUNC0(conf->multipaths[i].rdev);
		FUNC3 (seq, "%s", rdev && FUNC5(In_sync, &rdev->flags) ? "U" : "_");
	}
	FUNC2();
	FUNC4(seq, ']');
}