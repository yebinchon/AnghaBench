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
struct mddev {int changed; int /*<<< orphan*/  flags; int /*<<< orphan*/  kobj; int /*<<< orphan*/  sysfs_action; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  gendisk; int /*<<< orphan*/  array_sectors; int /*<<< orphan*/  sync_thread; int /*<<< orphan*/  thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  MD_NOT_READY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int FUNC5 (struct mddev*) ; 
 int FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct mddev *mddev)
{
	int err;

	FUNC11(MD_NOT_READY, &mddev->flags);
	err = FUNC6(mddev);
	if (err)
		goto out;
	err = FUNC5(mddev);
	if (err) {
		FUNC4(mddev);
		goto out;
	}

	if (FUNC9(mddev))
		FUNC3(mddev);

	/* run start up tasks that require md_thread */
	FUNC7(mddev);

	FUNC8(mddev->thread);
	FUNC8(mddev->sync_thread); /* possibly kick off a reshape */

	FUNC12(mddev->gendisk, mddev->array_sectors);
	FUNC10(mddev->gendisk);
	FUNC0(MD_NOT_READY, &mddev->flags);
	mddev->changed = 1;
	FUNC2(&FUNC1(mddev->gendisk)->kobj, KOBJ_CHANGE);
	FUNC14(mddev->sysfs_state);
	FUNC14(mddev->sysfs_action);
	FUNC13(&mddev->kobj, NULL, "degraded");
out:
	FUNC0(MD_NOT_READY, &mddev->flags);
	return err;
}