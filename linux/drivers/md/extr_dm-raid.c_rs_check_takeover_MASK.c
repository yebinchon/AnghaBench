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
struct mddev {int degraded; int level; int new_level; int raid_disks; int new_layout; int layout; unsigned int delta_disks; } ;
struct raid_set {int raid_disks; TYPE_1__* ti; struct mddev md; } ;
struct TYPE_2__ {char* error; } ;

/* Variables and functions */
 int ALGORITHM_LEFT_ASYMMETRIC ; 
 int ALGORITHM_LEFT_ASYMMETRIC_6 ; 
 int ALGORITHM_PARITY_N ; 
 int ALGORITHM_RIGHT_SYMMETRIC ; 
 int ALGORITHM_RIGHT_SYMMETRIC_6 ; 
 int EINVAL ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 
 unsigned int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 
 unsigned int FUNC4 (unsigned int,int) ; 
 scalar_t__ FUNC5 (struct raid_set*) ; 

__attribute__((used)) static int FUNC6(struct raid_set *rs)
{
	struct mddev *mddev = &rs->md;
	unsigned int near_copies;

	if (rs->md.degraded) {
		rs->ti->error = "Can't takeover degraded raid set";
		return -EPERM;
	}

	if (FUNC5(rs)) {
		rs->ti->error = "Can't takeover reshaping raid set";
		return -EPERM;
	}

	switch (mddev->level) {
	case 0:
		/* raid0 -> raid1/5 with one disk */
		if ((mddev->new_level == 1 || mddev->new_level == 5) &&
		    mddev->raid_disks == 1)
			return 0;

		/* raid0 -> raid10 */
		if (mddev->new_level == 10 &&
		    !(rs->raid_disks % mddev->raid_disks))
			return 0;

		/* raid0 with multiple disks -> raid4/5/6 */
		if (FUNC3(mddev->new_level, 4, 6) &&
		    mddev->new_layout == ALGORITHM_PARITY_N &&
		    mddev->raid_disks > 1)
			return 0;

		break;

	case 10:
		/* Can't takeover raid10_offset! */
		if (FUNC0(mddev->layout))
			break;

		near_copies = FUNC2(mddev->layout);

		/* raid10* -> raid0 */
		if (mddev->new_level == 0) {
			/* Can takeover raid10_near with raid disks divisable by data copies! */
			if (near_copies > 1 &&
			    !(mddev->raid_disks % near_copies)) {
				mddev->raid_disks /= near_copies;
				mddev->delta_disks = mddev->raid_disks;
				return 0;
			}

			/* Can takeover raid10_far */
			if (near_copies == 1 &&
			    FUNC1(mddev->layout) > 1)
				return 0;

			break;
		}

		/* raid10_{near,far} -> raid1 */
		if (mddev->new_level == 1 &&
		    FUNC4(near_copies, FUNC1(mddev->layout)) == mddev->raid_disks)
			return 0;

		/* raid10_{near,far} with 2 disks -> raid4/5 */
		if (FUNC3(mddev->new_level, 4, 5) &&
		    mddev->raid_disks == 2)
			return 0;
		break;

	case 1:
		/* raid1 with 2 disks -> raid4/5 */
		if (FUNC3(mddev->new_level, 4, 5) &&
		    mddev->raid_disks == 2) {
			mddev->degraded = 1;
			return 0;
		}

		/* raid1 -> raid0 */
		if (mddev->new_level == 0 &&
		    mddev->raid_disks == 1)
			return 0;

		/* raid1 -> raid10 */
		if (mddev->new_level == 10)
			return 0;
		break;

	case 4:
		/* raid4 -> raid0 */
		if (mddev->new_level == 0)
			return 0;

		/* raid4 -> raid1/5 with 2 disks */
		if ((mddev->new_level == 1 || mddev->new_level == 5) &&
		    mddev->raid_disks == 2)
			return 0;

		/* raid4 -> raid5/6 with parity N */
		if (FUNC3(mddev->new_level, 5, 6) &&
		    mddev->layout == ALGORITHM_PARITY_N)
			return 0;
		break;

	case 5:
		/* raid5 with parity N -> raid0 */
		if (mddev->new_level == 0 &&
		    mddev->layout == ALGORITHM_PARITY_N)
			return 0;

		/* raid5 with parity N -> raid4 */
		if (mddev->new_level == 4 &&
		    mddev->layout == ALGORITHM_PARITY_N)
			return 0;

		/* raid5 with 2 disks -> raid1/4/10 */
		if ((mddev->new_level == 1 || mddev->new_level == 4 || mddev->new_level == 10) &&
		    mddev->raid_disks == 2)
			return 0;

		/* raid5_* ->  raid6_*_6 with Q-Syndrome N (e.g. raid5_ra -> raid6_ra_6 */
		if (mddev->new_level == 6 &&
		    ((mddev->layout == ALGORITHM_PARITY_N && mddev->new_layout == ALGORITHM_PARITY_N) ||
		      FUNC3(mddev->new_layout, ALGORITHM_LEFT_ASYMMETRIC_6, ALGORITHM_RIGHT_SYMMETRIC_6)))
			return 0;
		break;

	case 6:
		/* raid6 with parity N -> raid0 */
		if (mddev->new_level == 0 &&
		    mddev->layout == ALGORITHM_PARITY_N)
			return 0;

		/* raid6 with parity N -> raid4 */
		if (mddev->new_level == 4 &&
		    mddev->layout == ALGORITHM_PARITY_N)
			return 0;

		/* raid6_*_n with Q-Syndrome N -> raid5_* */
		if (mddev->new_level == 5 &&
		    ((mddev->layout == ALGORITHM_PARITY_N && mddev->new_layout == ALGORITHM_PARITY_N) ||
		     FUNC3(mddev->new_layout, ALGORITHM_LEFT_ASYMMETRIC, ALGORITHM_RIGHT_SYMMETRIC)))
			return 0;

	default:
		break;
	}

	rs->ti->error = "takeover not possible";
	return -EINVAL;
}