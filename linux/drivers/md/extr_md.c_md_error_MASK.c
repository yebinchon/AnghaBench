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
struct TYPE_4__ {scalar_t__ func; } ;
struct mddev {TYPE_2__ event_work; int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; scalar_t__ degraded; TYPE_1__* pers; } ;
struct md_rdev {int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* error_handler ) (struct mddev*,struct md_rdev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_RECOVERY_RECOVER ; 
 int /*<<< orphan*/  md_misc_wq ; 
 int /*<<< orphan*/  FUNC0 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct mddev *mddev, struct md_rdev *rdev)
{
	if (!rdev || FUNC6(Faulty, &rdev->flags))
		return;

	if (!mddev->pers || !mddev->pers->error_handler)
		return;
	mddev->pers->error_handler(mddev,rdev);
	if (mddev->degraded)
		FUNC3(MD_RECOVERY_RECOVER, &mddev->recovery);
	FUNC5(rdev->sysfs_state);
	FUNC3(MD_RECOVERY_INTR, &mddev->recovery);
	FUNC3(MD_RECOVERY_NEEDED, &mddev->recovery);
	FUNC1(mddev->thread);
	if (mddev->event_work.func)
		FUNC2(md_misc_wq, &mddev->event_work);
	FUNC0(mddev);
}