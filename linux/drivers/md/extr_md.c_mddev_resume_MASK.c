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
struct mddev {int /*<<< orphan*/  sync_thread; int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; TYPE_1__* pers; int /*<<< orphan*/  sb_wait; scalar_t__ suspended; int /*<<< orphan*/  reconfig_mutex; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* quiesce ) (struct mddev*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct mddev *mddev)
{
	FUNC0(&mddev->reconfig_mutex);
	if (--mddev->suspended)
		return;
	FUNC4(&mddev->sb_wait);
	mddev->pers->quiesce(mddev, 0);

	FUNC2(MD_RECOVERY_NEEDED, &mddev->recovery);
	FUNC1(mddev->thread);
	FUNC1(mddev->sync_thread); /* possibly kick off a reshape */
}