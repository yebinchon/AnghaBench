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
struct mddev {scalar_t__ delta_disks; scalar_t__ in_sync; scalar_t__ ro; int /*<<< orphan*/  recovery; } ;
struct raid_set {int /*<<< orphan*/  runtime_flags; struct mddev md; } ;
struct dm_target {struct raid_set* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  MD_RECOVERY_FROZEN ; 
 int /*<<< orphan*/  RT_FLAG_RS_RESUMED ; 
 int /*<<< orphan*/  RT_FLAG_RS_SUSPENDED ; 
 int /*<<< orphan*/  FUNC0 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (struct raid_set*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct dm_target *ti)
{
	struct raid_set *rs = ti->private;
	struct mddev *mddev = &rs->md;

	if (FUNC7(RT_FLAG_RS_RESUMED, &rs->runtime_flags)) {
		/*
		 * A secondary resume while the device is active.
		 * Take this opportunity to check whether any failed
		 * devices are reachable again.
		 */
		FUNC0(rs);
	}

	if (FUNC6(RT_FLAG_RS_SUSPENDED, &rs->runtime_flags)) {
		/* Only reduce raid set size before running a disk removing reshape. */
		if (mddev->delta_disks < 0)
			FUNC5(rs);

		FUNC2(mddev);
		FUNC1(MD_RECOVERY_FROZEN, &mddev->recovery);
		mddev->ro = 0;
		mddev->in_sync = 0;
		FUNC3(mddev);
		FUNC4(mddev);
	}
}