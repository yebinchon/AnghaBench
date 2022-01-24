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
struct mpconf {int raid_disks; TYPE_1__* multipaths; } ;
struct md_rdev {int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  flags; } ;
struct TYPE_2__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct md_rdev* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6 (struct mpconf *conf)
{
	int i, disks = conf->raid_disks;

	/*
	 * Later we do read balancing on the read side
	 * now we use the first available disk.
	 */

	FUNC3();
	for (i = 0; i < disks; i++) {
		struct md_rdev *rdev = FUNC2(conf->multipaths[i].rdev);
		if (rdev && FUNC5(In_sync, &rdev->flags) &&
		    !FUNC5(Faulty, &rdev->flags)) {
			FUNC0(&rdev->nr_pending);
			FUNC4();
			return i;
		}
	}
	FUNC4();

	FUNC1("multipath_map(): no more operational IO paths?\n");
	return (-1);
}