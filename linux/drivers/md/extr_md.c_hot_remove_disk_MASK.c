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
struct mddev {scalar_t__ thread; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  pers; } ;
struct md_rdev {scalar_t__ raid_disk; int /*<<< orphan*/  bdev; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* remove_disk ) (struct mddev*,struct md_rdev*) ;} ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  Blocked ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENXIO ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct md_rdev* FUNC2 (struct mddev*,int /*<<< orphan*/ ) ; 
 TYPE_1__* md_cluster_ops ; 
 int /*<<< orphan*/  FUNC3 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC8 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct mddev*,struct md_rdev*) ; 

__attribute__((used)) static int FUNC13(struct mddev *mddev, dev_t dev)
{
	char b[BDEVNAME_SIZE];
	struct md_rdev *rdev;

	if (!mddev->pers)
		return -ENODEV;

	rdev = FUNC2(mddev, dev);
	if (!rdev)
		return -ENXIO;

	if (rdev->raid_disk < 0)
		goto kick_rdev;

	FUNC1(Blocked, &rdev->flags);
	FUNC10(mddev, rdev);

	if (rdev->raid_disk >= 0)
		goto busy;

kick_rdev:
	if (FUNC7(mddev))
		md_cluster_ops->remove_disk(mddev, rdev);

	FUNC3(rdev);
	FUNC11(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
	if (mddev->thread)
		FUNC6(mddev->thread);
	else
		FUNC5(mddev, 1);
	FUNC4(mddev);

	return 0;
busy:
	FUNC9("md: cannot remove active disk %s from %s ...\n",
		 FUNC0(rdev->bdev,b), FUNC8(mddev));
	return -EBUSY;
}