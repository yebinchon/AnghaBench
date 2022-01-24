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
struct mddev {int ro; scalar_t__ thread; int /*<<< orphan*/  suspended; int /*<<< orphan*/  recovery; scalar_t__ sync_thread; TYPE_1__* pers; } ;
struct raid_set {struct mddev md; } ;
struct dm_target {struct raid_set* private; } ;
struct TYPE_2__ {int /*<<< orphan*/  sync_request; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  MD_RECOVERY_CHECK ; 
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_RECOVERY_RECOVER ; 
 int /*<<< orphan*/  MD_RECOVERY_REQUESTED ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct mddev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ st_idle ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

__attribute__((used)) static int FUNC6(struct dm_target *ti, unsigned int argc, char **argv,
			char *result, unsigned maxlen)
{
	struct raid_set *rs = ti->private;
	struct mddev *mddev = &rs->md;

	if (!mddev->pers || !mddev->pers->sync_request)
		return -EINVAL;

	if (!FUNC5(argv[0], "frozen"))
		FUNC4(MD_RECOVERY_FROZEN, &mddev->recovery);
	else
		FUNC0(MD_RECOVERY_FROZEN, &mddev->recovery);

	if (!FUNC5(argv[0], "idle") || !FUNC5(argv[0], "frozen")) {
		if (mddev->sync_thread) {
			FUNC4(MD_RECOVERY_INTR, &mddev->recovery);
			FUNC2(mddev);
		}
	} else if (FUNC1(mddev, mddev->recovery) != st_idle)
		return -EBUSY;
	else if (!FUNC5(argv[0], "resync"))
		; /* MD_RECOVERY_NEEDED set below */
	else if (!FUNC5(argv[0], "recover"))
		FUNC4(MD_RECOVERY_RECOVER, &mddev->recovery);
	else {
		if (!FUNC5(argv[0], "check")) {
			FUNC4(MD_RECOVERY_CHECK, &mddev->recovery);
			FUNC4(MD_RECOVERY_REQUESTED, &mddev->recovery);
			FUNC4(MD_RECOVERY_SYNC, &mddev->recovery);
		} else if (!FUNC5(argv[0], "repair")) {
			FUNC4(MD_RECOVERY_REQUESTED, &mddev->recovery);
			FUNC4(MD_RECOVERY_SYNC, &mddev->recovery);
		} else
			return -EINVAL;
	}
	if (mddev->ro == 2) {
		/* A write to sync_action is enough to justify
		 * canceling read-auto mode
		 */
		mddev->ro = 0;
		if (!mddev->suspended && mddev->sync_thread)
			FUNC3(mddev->sync_thread);
	}
	FUNC4(MD_RECOVERY_NEEDED, &mddev->recovery);
	if (!mddev->suspended && mddev->thread)
		FUNC3(mddev->thread);

	return 0;
}