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
struct mddev {int level; scalar_t__ layout; scalar_t__ bitmap; } ;

/* Variables and functions */
 scalar_t__ ALGORITHM_PARITY_N ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 void* FUNC3 (struct mddev*) ; 
 void* FUNC4 (struct mddev*) ; 
 void* FUNC5 (struct mddev*) ; 

__attribute__((used)) static void *FUNC6(struct mddev *mddev)
{
	/* raid0 can take over:
	 *  raid4 - if all data disks are active.
	 *  raid5 - providing it is Raid4 layout and one disk is faulty
	 *  raid10 - assuming we have all necessary active disks
	 *  raid1 - with (N -1) mirror drives faulty
	 */

	if (mddev->bitmap) {
		FUNC2("md/raid0: %s: cannot takeover array with bitmap\n",
			FUNC1(mddev));
		return FUNC0(-EBUSY);
	}
	if (mddev->level == 4)
		return FUNC5(mddev);

	if (mddev->level == 5) {
		if (mddev->layout == ALGORITHM_PARITY_N)
			return FUNC5(mddev);

		FUNC2("md/raid0:%s: Raid can only takeover Raid5 with layout: %d\n",
			FUNC1(mddev), ALGORITHM_PARITY_N);
	}

	if (mddev->level == 10)
		return FUNC4(mddev);

	if (mddev->level == 1)
		return FUNC3(mddev);

	FUNC2("Takeover from raid%i to raid0 not supported\n",
		mddev->level);

	return FUNC0(-EINVAL);
}