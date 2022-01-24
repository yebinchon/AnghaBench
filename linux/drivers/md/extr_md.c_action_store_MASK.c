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
struct mddev {int ro; int /*<<< orphan*/  sysfs_action; scalar_t__ thread; int /*<<< orphan*/  recovery; scalar_t__ sync_thread; int /*<<< orphan*/  kobj; TYPE_1__* pers; } ;
typedef  int ssize_t ;
struct TYPE_2__ {int (* start_reshape ) (struct mddev*) ;int /*<<< orphan*/  sync_request; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MD_RECOVERY_CHECK ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_RECOVERY_RECOVER ; 
 int /*<<< orphan*/  MD_RECOVERY_REQUESTED ; 
 int /*<<< orphan*/  MD_RECOVERY_RUNNING ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  md_misc_wq ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC12(struct mddev *mddev, const char *page, size_t len)
{
	if (!mddev->pers || !mddev->pers->sync_request)
		return -EINVAL;


	if (FUNC1(page, "idle") || FUNC1(page, "frozen")) {
		if (FUNC1(page, "frozen"))
			FUNC7(MD_RECOVERY_FROZEN, &mddev->recovery);
		else
			FUNC0(MD_RECOVERY_FROZEN, &mddev->recovery);
		if (FUNC11(MD_RECOVERY_RUNNING, &mddev->recovery) &&
		    FUNC5(mddev) == 0) {
			FUNC2(md_misc_wq);
			if (mddev->sync_thread) {
				FUNC7(MD_RECOVERY_INTR, &mddev->recovery);
				FUNC3(mddev);
			}
			FUNC6(mddev);
		}
	} else if (FUNC11(MD_RECOVERY_RUNNING, &mddev->recovery))
		return -EBUSY;
	else if (FUNC1(page, "resync"))
		FUNC0(MD_RECOVERY_FROZEN, &mddev->recovery);
	else if (FUNC1(page, "recover")) {
		FUNC0(MD_RECOVERY_FROZEN, &mddev->recovery);
		FUNC7(MD_RECOVERY_RECOVER, &mddev->recovery);
	} else if (FUNC1(page, "reshape")) {
		int err;
		if (mddev->pers->start_reshape == NULL)
			return -EINVAL;
		err = FUNC5(mddev);
		if (!err) {
			if (FUNC11(MD_RECOVERY_RUNNING, &mddev->recovery))
				err =  -EBUSY;
			else {
				FUNC0(MD_RECOVERY_FROZEN, &mddev->recovery);
				err = mddev->pers->start_reshape(mddev);
			}
			FUNC6(mddev);
		}
		if (err)
			return err;
		FUNC9(&mddev->kobj, NULL, "degraded");
	} else {
		if (FUNC1(page, "check"))
			FUNC7(MD_RECOVERY_CHECK, &mddev->recovery);
		else if (!FUNC1(page, "repair"))
			return -EINVAL;
		FUNC0(MD_RECOVERY_FROZEN, &mddev->recovery);
		FUNC7(MD_RECOVERY_REQUESTED, &mddev->recovery);
		FUNC7(MD_RECOVERY_SYNC, &mddev->recovery);
	}
	if (mddev->ro == 2) {
		/* A write to sync_action is enough to justify
		 * canceling read-auto mode
		 */
		mddev->ro = 0;
		FUNC4(mddev->sync_thread);
	}
	FUNC7(MD_RECOVERY_NEEDED, &mddev->recovery);
	FUNC4(mddev->thread);
	FUNC10(mddev->sysfs_action);
	return len;
}