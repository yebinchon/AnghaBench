#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct multipath_info {struct md_rdev* rdev; } ;
struct mpconf {struct multipath_info* multipaths; } ;
struct mddev {struct mpconf* private; } ;
struct md_rdev {int raid_disk; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  RemoveSynchronized ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mpconf*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct mddev *mddev, struct md_rdev *rdev)
{
	struct mpconf *conf = mddev->private;
	int err = 0;
	int number = rdev->raid_disk;
	struct multipath_info *p = conf->multipaths + number;

	FUNC3(conf);

	if (rdev == p->rdev) {
		if (FUNC5(In_sync, &rdev->flags) ||
		    FUNC0(&rdev->nr_pending)) {
			FUNC2("hot-remove-disk, slot %d is identified but is still operational!\n", number);
			err = -EBUSY;
			goto abort;
		}
		p->rdev = NULL;
		if (!FUNC5(RemoveSynchronized, &rdev->flags)) {
			FUNC4();
			if (FUNC0(&rdev->nr_pending)) {
				/* lost the race, try later */
				err = -EBUSY;
				p->rdev = rdev;
				goto abort;
			}
		}
		err = FUNC1(mddev);
	}
abort:

	FUNC3(conf);
	return err;
}