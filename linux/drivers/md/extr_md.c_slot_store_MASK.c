#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct md_rdev {int raid_disk; int saved_raid_disk; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; TYPE_2__* mddev; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int raid_disks; int delta_disks; TYPE_1__* pers; int /*<<< orphan*/  recovery; int /*<<< orphan*/  thread; } ;
struct TYPE_5__ {int (* hot_add_disk ) (TYPE_2__*,struct md_rdev*) ;int /*<<< orphan*/ * hot_remove_disk; } ;

/* Variables and functions */
 int /*<<< orphan*/  Bitmap_sync ; 
 int /*<<< orphan*/  Blocked ; 
 int EBUSY ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOSPC ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  Journal ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_RECOVERY_RUNNING ; 
 int /*<<< orphan*/  WriteMostly ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*,int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char*,int) ; 
 int FUNC6 (TYPE_2__*,struct md_rdev*) ; 
 scalar_t__ FUNC7 (TYPE_2__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC10(struct md_rdev *rdev, const char *buf, size_t len)
{
	int slot;
	int err;

	if (FUNC9(Journal, &rdev->flags))
		return -EBUSY;
	if (FUNC5(buf, "none", 4)==0)
		slot = -1;
	else {
		err = FUNC1(buf, 10, (unsigned int *)&slot);
		if (err < 0)
			return err;
	}
	if (rdev->mddev->pers && slot == -1) {
		/* Setting 'slot' on an active array requires also
		 * updating the 'rd%d' link, and communicating
		 * with the personality with ->hot_*_disk.
		 * For now we only support removing
		 * failed/spare devices.  This normally happens automatically,
		 * but not when the metadata is externally managed.
		 */
		if (rdev->raid_disk == -1)
			return -EEXIST;
		/* personality does all needed checks */
		if (rdev->mddev->pers->hot_remove_disk == NULL)
			return -EINVAL;
		FUNC0(Blocked, &rdev->flags);
		FUNC3(rdev->mddev, rdev);
		if (rdev->raid_disk >= 0)
			return -EBUSY;
		FUNC4(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
		FUNC2(rdev->mddev->thread);
	} else if (rdev->mddev->pers) {
		/* Activating a spare .. or possibly reactivating
		 * if we ever get bitmaps working here.
		 */
		int err;

		if (rdev->raid_disk != -1)
			return -EBUSY;

		if (FUNC9(MD_RECOVERY_RUNNING, &rdev->mddev->recovery))
			return -EBUSY;

		if (rdev->mddev->pers->hot_add_disk == NULL)
			return -EINVAL;

		if (slot >= rdev->mddev->raid_disks &&
		    slot >= rdev->mddev->raid_disks + rdev->mddev->delta_disks)
			return -ENOSPC;

		rdev->raid_disk = slot;
		if (FUNC9(In_sync, &rdev->flags))
			rdev->saved_raid_disk = slot;
		else
			rdev->saved_raid_disk = -1;
		FUNC0(In_sync, &rdev->flags);
		FUNC0(Bitmap_sync, &rdev->flags);
		err = rdev->mddev->pers->
			hot_add_disk(rdev->mddev, rdev);
		if (err) {
			rdev->raid_disk = -1;
			return err;
		} else
			FUNC8(rdev->sysfs_state);
		if (FUNC7(rdev->mddev, rdev))
			/* failure here is OK */;
		/* don't wakeup anyone, leave that to userspace. */
	} else {
		if (slot >= rdev->mddev->raid_disks &&
		    slot >= rdev->mddev->raid_disks + rdev->mddev->delta_disks)
			return -ENOSPC;
		rdev->raid_disk = slot;
		/* assume it is working */
		FUNC0(Faulty, &rdev->flags);
		FUNC0(WriteMostly, &rdev->flags);
		FUNC4(In_sync, &rdev->flags);
		FUNC8(rdev->sysfs_state);
	}
	return len;
}