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
struct mddev {int /*<<< orphan*/  safemode_timer; int /*<<< orphan*/  flags; int /*<<< orphan*/  sb_wait; TYPE_2__* pers; int /*<<< orphan*/  active_io; int /*<<< orphan*/  suspended; int /*<<< orphan*/  reconfig_mutex; TYPE_1__* thread; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* quiesce ) (struct mddev*,int) ;} ;
struct TYPE_3__ {scalar_t__ tsk; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_ALLOW_SB_UPDATE ; 
 int /*<<< orphan*/  MD_UPDATING_SB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

void FUNC12(struct mddev *mddev)
{
	FUNC0(mddev->thread && current == mddev->thread->tsk);
	FUNC4(&mddev->reconfig_mutex);
	if (mddev->suspended++)
		return;
	FUNC8();
	FUNC11(&mddev->sb_wait);
	FUNC5(MD_ALLOW_SB_UPDATE, &mddev->flags);
	FUNC6();
	FUNC10(mddev->sb_wait, FUNC1(&mddev->active_io) == 0);
	mddev->pers->quiesce(mddev, 1);
	FUNC2(MD_ALLOW_SB_UPDATE, &mddev->flags);
	FUNC10(mddev->sb_wait, !FUNC9(MD_UPDATING_SB, &mddev->flags));

	FUNC3(&mddev->safemode_timer);
}