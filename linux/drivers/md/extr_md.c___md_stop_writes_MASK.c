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
struct mddev {scalar_t__ ro; int in_sync; int /*<<< orphan*/ * wb_info_pool; scalar_t__ sb_flags; TYPE_1__* pers; int /*<<< orphan*/  safemode_timer; int /*<<< orphan*/  recovery; scalar_t__ sync_thread; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* quiesce ) (struct mddev*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  md_misc_wq ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct mddev*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct mddev*,int) ; 

__attribute__((used)) static void FUNC10(struct mddev *mddev)
{
	FUNC7(MD_RECOVERY_FROZEN, &mddev->recovery);
	FUNC1(md_misc_wq);
	if (mddev->sync_thread) {
		FUNC7(MD_RECOVERY_INTR, &mddev->recovery);
		FUNC3(mddev);
	}

	FUNC0(&mddev->safemode_timer);

	if (mddev->pers && mddev->pers->quiesce) {
		mddev->pers->quiesce(mddev, 1);
		mddev->pers->quiesce(mddev, 0);
	}
	FUNC2(mddev);

	if (mddev->ro == 0 &&
	    ((!mddev->in_sync && !FUNC5(mddev)) ||
	     mddev->sb_flags)) {
		/* mark array as shutdown cleanly */
		if (!FUNC5(mddev))
			mddev->in_sync = 1;
		FUNC4(mddev, 1);
	}
	FUNC6(mddev->wb_info_pool);
	mddev->wb_info_pool = NULL;
}