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
struct mddev {size_t major_version; int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; scalar_t__ degraded; int /*<<< orphan*/  sb_flags; TYPE_1__* pers; } ;
struct md_rdev {int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; struct mddev* mddev; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* validate_super ) (struct mddev*,struct md_rdev*) ;} ;
struct TYPE_3__ {int (* hot_add_disk ) (struct mddev*,struct md_rdev*) ;int /*<<< orphan*/  hot_remove_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  Journal ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_RECOVERY_RECOVER ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  FUNC0 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC4 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mddev*,struct md_rdev*) ; 
 int FUNC7 (struct mddev*,struct md_rdev*) ; 
 TYPE_2__* super_types ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct md_rdev *rdev)
{
	struct mddev *mddev = rdev->mddev;
	int err = 0;
	bool add_journal = FUNC9(Journal, &rdev->flags);

	if (!mddev->pers->hot_remove_disk || add_journal) {
		/* If there is hot_add_disk but no hot_remove_disk
		 * then added disks for geometry changes,
		 * and should be added immediately.
		 */
		super_types[mddev->major_version].
			validate_super(mddev, rdev);
		if (add_journal)
			FUNC4(mddev);
		err = mddev->pers->hot_add_disk(mddev, rdev);
		if (add_journal)
			FUNC3(mddev);
		if (err) {
			FUNC0(rdev);
			return err;
		}
	}
	FUNC8(rdev->sysfs_state);

	FUNC5(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
	if (mddev->degraded)
		FUNC5(MD_RECOVERY_RECOVER, &mddev->recovery);
	FUNC5(MD_RECOVERY_NEEDED, &mddev->recovery);
	FUNC1(mddev);
	FUNC2(mddev->thread);
	return 0;
}