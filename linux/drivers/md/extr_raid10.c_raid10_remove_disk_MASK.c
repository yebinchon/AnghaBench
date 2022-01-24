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
struct raid10_info {scalar_t__ recovery_disabled; struct md_rdev* replacement; struct md_rdev* rdev; } ;
struct TYPE_2__ {int raid_disks; } ;
struct r10conf {TYPE_1__ geo; struct raid10_info* mirrors; } ;
struct mddev {scalar_t__ recovery_disabled; struct r10conf* private; } ;
struct md_rdev {int raid_disk; int /*<<< orphan*/  flags; int /*<<< orphan*/  nr_pending; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  RemoveSynchronized ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct r10conf*,int) ; 
 int FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct mddev *mddev, struct md_rdev *rdev)
{
	struct r10conf *conf = mddev->private;
	int err = 0;
	int number = rdev->raid_disk;
	struct md_rdev **rdevp;
	struct raid10_info *p = conf->mirrors + number;

	FUNC4(conf);
	if (rdev == p->rdev)
		rdevp = &p->rdev;
	else if (rdev == p->replacement)
		rdevp = &p->replacement;
	else
		return 0;

	if (FUNC7(In_sync, &rdev->flags) ||
	    FUNC0(&rdev->nr_pending)) {
		err = -EBUSY;
		goto abort;
	}
	/* Only remove non-faulty devices if recovery
	 * is not possible.
	 */
	if (!FUNC7(Faulty, &rdev->flags) &&
	    mddev->recovery_disabled != p->recovery_disabled &&
	    (!p->replacement || p->replacement == rdev) &&
	    number < conf->geo.raid_disks &&
	    FUNC2(conf, -1)) {
		err = -EBUSY;
		goto abort;
	}
	*rdevp = NULL;
	if (!FUNC7(RemoveSynchronized, &rdev->flags)) {
		FUNC6();
		if (FUNC0(&rdev->nr_pending)) {
			/* lost the race, try later */
			err = -EBUSY;
			*rdevp = rdev;
			goto abort;
		}
	}
	if (p->replacement) {
		/* We must have just cleared 'rdev' */
		p->rdev = p->replacement;
		FUNC1(Replacement, &p->replacement->flags);
		FUNC5(); /* Make sure other CPUs may see both as identical
			   * but will never see neither -- if they are careful.
			   */
		p->replacement = NULL;
	}

	FUNC1(WantReplacement, &rdev->flags);
	err = FUNC3(mddev);

abort:

	FUNC4(conf);
	return err;
}