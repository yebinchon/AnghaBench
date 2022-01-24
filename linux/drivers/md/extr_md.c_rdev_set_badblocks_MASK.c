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
struct mddev {int /*<<< orphan*/  thread; int /*<<< orphan*/  sb_flags; } ;
struct md_rdev {struct mddev* mddev; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  kobj; int /*<<< orphan*/  flags; int /*<<< orphan*/  badblocks; scalar_t__ data_offset; scalar_t__ new_data_offset; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ExternalBbl ; 
 int /*<<< orphan*/  MD_SB_CHANGE_CLEAN ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC7(struct md_rdev *rdev, sector_t s, int sectors,
		       int is_new)
{
	struct mddev *mddev = rdev->mddev;
	int rv;
	if (is_new)
		s += rdev->new_data_offset;
	else
		s += rdev->data_offset;
	rv = FUNC1(&rdev->badblocks, s, sectors, 0);
	if (rv == 0) {
		/* Make sure they get written out promptly */
		if (FUNC6(ExternalBbl, &rdev->flags))
			FUNC4(&rdev->kobj, NULL,
				     "unacknowledged_bad_blocks");
		FUNC5(rdev->sysfs_state);
		FUNC3(&mddev->sb_flags, 0,
			      FUNC0(MD_SB_CHANGE_CLEAN) | FUNC0(MD_SB_CHANGE_PENDING));
		FUNC2(rdev->mddev->thread);
		return 1;
	} else
		return 0;
}