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
struct TYPE_3__ {scalar_t__ count; } ;
struct md_rdev {int /*<<< orphan*/  del_work; int /*<<< orphan*/  kobj; TYPE_1__ badblocks; int /*<<< orphan*/ * sysfs_state; TYPE_2__* mddev; int /*<<< orphan*/  bdev; int /*<<< orphan*/  same_set; } ;
struct TYPE_4__ {int /*<<< orphan*/  gendisk; } ;

/* Variables and functions */
 int BDEVNAME_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  md_delayed_delete ; 
 int /*<<< orphan*/  md_misc_wq ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC11(struct md_rdev *rdev)
{
	char b[BDEVNAME_SIZE];

	FUNC1(rdev->bdev, rdev->mddev->gendisk);
	FUNC4(&rdev->same_set);
	FUNC6("md: unbind<%s>\n", FUNC2(rdev->bdev,b));
	FUNC5(rdev->mddev, rdev);
	rdev->mddev = NULL;
	FUNC10(&rdev->kobj, "block");
	FUNC9(rdev->sysfs_state);
	rdev->sysfs_state = NULL;
	rdev->badblocks.count = 0;
	/* We need to delay this, otherwise we can deadlock when
	 * writing to 'remove' to "dev/state".  We also need
	 * to delay it due to rcu usage.
	 */
	FUNC8();
	FUNC0(&rdev->del_work, md_delayed_delete);
	FUNC3(&rdev->kobj);
	FUNC7(md_misc_wq, &rdev->del_work);
}