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
struct mddev {scalar_t__ external; int /*<<< orphan*/ * pers; int /*<<< orphan*/  thread; int /*<<< orphan*/  recovery; int /*<<< orphan*/  sb_flags; } ;
struct TYPE_3__ {scalar_t__ shift; scalar_t__ unacked_exist; } ;
struct md_rdev {int raid_disk; int saved_raid_disk; int /*<<< orphan*/  sysfs_state; int /*<<< orphan*/  flags; struct mddev* mddev; TYPE_1__ badblocks; int /*<<< orphan*/  blocked_wait; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int (* remove_disk ) (struct mddev*,struct md_rdev*) ;int (* gather_bitmaps ) (struct md_rdev*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  Blocked ; 
 int /*<<< orphan*/  BlockedBadBlocks ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  ExternalBbl ; 
 int /*<<< orphan*/  FailFast ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  Journal ; 
 int /*<<< orphan*/  MD_RECOVERY_NEEDED ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  Replacement ; 
 int /*<<< orphan*/  WantReplacement ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  WriteMostly ; 
 int FUNC0 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 TYPE_2__* md_cluster_ops ; 
 int /*<<< orphan*/  FUNC3 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC4 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mddev*,struct md_rdev*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mddev*,struct md_rdev*) ; 
 scalar_t__ FUNC9 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC10 (struct mddev*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct mddev*,struct md_rdev*) ; 
 int FUNC13 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t
FUNC17(struct md_rdev *rdev, const char *buf, size_t len)
{
	/* can write
	 *  faulty  - simulates an error
	 *  remove  - disconnects the device
	 *  writemostly - sets write_mostly
	 *  -writemostly - clears write_mostly
	 *  blocked - sets the Blocked flags
	 *  -blocked - clears the Blocked and possibly simulates an error
	 *  insync - sets Insync providing device isn't active
	 *  -insync - clear Insync for a device with a slot assigned,
	 *            so that it gets rebuilt based on bitmap
	 *  write_error - sets WriteErrorSeen
	 *  -write_error - clears WriteErrorSeen
	 *  {,-}failfast - set/clear FailFast
	 */
	int err = -EINVAL;
	if (FUNC2(buf, "faulty") && rdev->mddev->pers) {
		FUNC3(rdev->mddev, rdev);
		if (FUNC15(Faulty, &rdev->flags))
			err = 0;
		else
			err = -EBUSY;
	} else if (FUNC2(buf, "remove")) {
		if (rdev->mddev->pers) {
			FUNC1(Blocked, &rdev->flags);
			FUNC10(rdev->mddev, rdev);
		}
		if (rdev->raid_disk >= 0)
			err = -EBUSY;
		else {
			struct mddev *mddev = rdev->mddev;
			err = 0;
			if (FUNC9(mddev))
				err = md_cluster_ops->remove_disk(mddev, rdev);

			if (err == 0) {
				FUNC4(rdev);
				if (mddev->pers) {
					FUNC11(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
					FUNC6(mddev->thread);
				}
				FUNC5(mddev);
			}
		}
	} else if (FUNC2(buf, "writemostly")) {
		FUNC11(WriteMostly, &rdev->flags);
		FUNC7(rdev->mddev, rdev, false);
		err = 0;
	} else if (FUNC2(buf, "-writemostly")) {
		FUNC8(rdev->mddev, rdev);
		FUNC1(WriteMostly, &rdev->flags);
		err = 0;
	} else if (FUNC2(buf, "blocked")) {
		FUNC11(Blocked, &rdev->flags);
		err = 0;
	} else if (FUNC2(buf, "-blocked")) {
		if (!FUNC15(Faulty, &rdev->flags) &&
		    !FUNC15(ExternalBbl, &rdev->flags) &&
		    rdev->badblocks.unacked_exist) {
			/* metadata handler doesn't understand badblocks,
			 * so we need to fail the device
			 */
			FUNC3(rdev->mddev, rdev);
		}
		FUNC1(Blocked, &rdev->flags);
		FUNC1(BlockedBadBlocks, &rdev->flags);
		FUNC16(&rdev->blocked_wait);
		FUNC11(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
		FUNC6(rdev->mddev->thread);

		err = 0;
	} else if (FUNC2(buf, "insync") && rdev->raid_disk == -1) {
		FUNC11(In_sync, &rdev->flags);
		err = 0;
	} else if (FUNC2(buf, "failfast")) {
		FUNC11(FailFast, &rdev->flags);
		err = 0;
	} else if (FUNC2(buf, "-failfast")) {
		FUNC1(FailFast, &rdev->flags);
		err = 0;
	} else if (FUNC2(buf, "-insync") && rdev->raid_disk >= 0 &&
		   !FUNC15(Journal, &rdev->flags)) {
		if (rdev->mddev->pers == NULL) {
			FUNC1(In_sync, &rdev->flags);
			rdev->saved_raid_disk = rdev->raid_disk;
			rdev->raid_disk = -1;
			err = 0;
		}
	} else if (FUNC2(buf, "write_error")) {
		FUNC11(WriteErrorSeen, &rdev->flags);
		err = 0;
	} else if (FUNC2(buf, "-write_error")) {
		FUNC1(WriteErrorSeen, &rdev->flags);
		err = 0;
	} else if (FUNC2(buf, "want_replacement")) {
		/* Any non-spare device that is not a replacement can
		 * become want_replacement at any time, but we then need to
		 * check if recovery is needed.
		 */
		if (rdev->raid_disk >= 0 &&
		    !FUNC15(Journal, &rdev->flags) &&
		    !FUNC15(Replacement, &rdev->flags))
			FUNC11(WantReplacement, &rdev->flags);
		FUNC11(MD_RECOVERY_NEEDED, &rdev->mddev->recovery);
		FUNC6(rdev->mddev->thread);
		err = 0;
	} else if (FUNC2(buf, "-want_replacement")) {
		/* Clearing 'want_replacement' is always allowed.
		 * Once replacements starts it is too late though.
		 */
		err = 0;
		FUNC1(WantReplacement, &rdev->flags);
	} else if (FUNC2(buf, "replacement")) {
		/* Can only set a device as a replacement when array has not
		 * yet been started.  Once running, replacement is automatic
		 * from spares, or by assigning 'slot'.
		 */
		if (rdev->mddev->pers)
			err = -EBUSY;
		else {
			FUNC11(Replacement, &rdev->flags);
			err = 0;
		}
	} else if (FUNC2(buf, "-replacement")) {
		/* Similarly, can only clear Replacement before start */
		if (rdev->mddev->pers)
			err = -EBUSY;
		else {
			FUNC1(Replacement, &rdev->flags);
			err = 0;
		}
	} else if (FUNC2(buf, "re-add")) {
		if (!rdev->mddev->pers)
			err = -EINVAL;
		else if (FUNC15(Faulty, &rdev->flags) && (rdev->raid_disk == -1) &&
				rdev->saved_raid_disk >= 0) {
			/* clear_bit is performed _after_ all the devices
			 * have their local Faulty bit cleared. If any writes
			 * happen in the meantime in the local node, they
			 * will land in the local bitmap, which will be synced
			 * by this node eventually
			 */
			if (!FUNC9(rdev->mddev) ||
			    (err = md_cluster_ops->gather_bitmaps(rdev)) == 0) {
				FUNC1(Faulty, &rdev->flags);
				err = FUNC0(rdev);
			}
		} else
			err = -EBUSY;
	} else if (FUNC2(buf, "external_bbl") && (rdev->mddev->external)) {
		FUNC11(ExternalBbl, &rdev->flags);
		rdev->badblocks.shift = 0;
		err = 0;
	} else if (FUNC2(buf, "-external_bbl") && (rdev->mddev->external)) {
		FUNC1(ExternalBbl, &rdev->flags);
		err = 0;
	}
	if (!err)
		FUNC14(rdev->sysfs_state);
	return err ? err : len;
}