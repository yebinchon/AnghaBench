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
struct stripe_head_state {int expanding; int expanded; int* failed_num; int compute; int handle_bad_blocks; int failed; int syncing; int replacing; int /*<<< orphan*/  just_cached; int /*<<< orphan*/  injournal; struct md_rdev* blocked_rdev; int /*<<< orphan*/  written; int /*<<< orphan*/  non_overwrite; int /*<<< orphan*/  to_write; int /*<<< orphan*/  to_read; int /*<<< orphan*/  to_fill; int /*<<< orphan*/  uptodate; int /*<<< orphan*/  locked; int /*<<< orphan*/  log_failed; } ;
struct stripe_head {int disks; scalar_t__ sector; int /*<<< orphan*/  state; struct r5dev* dev; int /*<<< orphan*/  batch_head; struct r5conf* raid_conf; } ;
struct r5dev {scalar_t__ written; int /*<<< orphan*/  flags; scalar_t__ towrite; scalar_t__ toread; } ;
struct r5conf {TYPE_2__* mddev; TYPE_1__* disks; } ;
struct md_rdev {scalar_t__ recovery_offset; int /*<<< orphan*/  flags; int /*<<< orphan*/  nr_pending; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_4__ {scalar_t__ recovery_cp; int /*<<< orphan*/  recovery; } ;
struct TYPE_3__ {int /*<<< orphan*/  replacement; int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Blocked ; 
 int /*<<< orphan*/  BlockedBadBlocks ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_RECOVERY_REQUESTED ; 
 int /*<<< orphan*/  R5_Expanded ; 
 int /*<<< orphan*/  R5_InJournal ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_MadeGood ; 
 int /*<<< orphan*/  R5_MadeGoodRepl ; 
 int /*<<< orphan*/  R5_NeedReplace ; 
 int /*<<< orphan*/  R5_OVERWRITE ; 
 int /*<<< orphan*/  R5_ReWrite ; 
 int /*<<< orphan*/  R5_ReadError ; 
 int /*<<< orphan*/  R5_ReadRepl ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  R5_Wantcompute ; 
 int /*<<< orphan*/  R5_Wantfill ; 
 int /*<<< orphan*/  R5_WriteError ; 
 int /*<<< orphan*/  STRIPE_BIOFILL_RUN ; 
 int /*<<< orphan*/  STRIPE_EXPAND_READY ; 
 int /*<<< orphan*/  STRIPE_EXPAND_SOURCE ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  STRIPE_SYNCING ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct md_rdev*,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct stripe_head_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct r5conf*) ; 
 struct md_rdev* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct stripe_head *sh, struct stripe_head_state *s)
{
	struct r5conf *conf = sh->raid_conf;
	int disks = sh->disks;
	struct r5dev *dev;
	int i;
	int do_recovery = 0;

	FUNC4(s, 0, sizeof(*s));

	s->expanding = FUNC11(STRIPE_EXPAND_SOURCE, &sh->state) && !sh->batch_head;
	s->expanded = FUNC11(STRIPE_EXPAND_READY, &sh->state) && !sh->batch_head;
	s->failed_num[0] = -1;
	s->failed_num[1] = -1;
	s->log_failed = FUNC6(conf);

	/* Now to look around and see what can be done */
	FUNC8();
	for (i=disks; i--; ) {
		struct md_rdev *rdev;
		sector_t first_bad;
		int bad_sectors;
		int is_bad = 0;

		dev = &sh->dev[i];

		FUNC5("check %d: state 0x%lx read %p write %p written %p\n",
			 i, dev->flags,
			 dev->toread, dev->towrite, dev->written);
		/* maybe we can reply to a read
		 *
		 * new wantfill requests are only permitted while
		 * ops_complete_biofill is guaranteed to be inactive
		 */
		if (FUNC11(R5_UPTODATE, &dev->flags) && dev->toread &&
		    !FUNC11(STRIPE_BIOFILL_RUN, &sh->state))
			FUNC10(R5_Wantfill, &dev->flags);

		/* now count some things */
		if (FUNC11(R5_LOCKED, &dev->flags))
			s->locked++;
		if (FUNC11(R5_UPTODATE, &dev->flags))
			s->uptodate++;
		if (FUNC11(R5_Wantcompute, &dev->flags)) {
			s->compute++;
			FUNC0(s->compute > 2);
		}

		if (FUNC11(R5_Wantfill, &dev->flags))
			s->to_fill++;
		else if (dev->toread)
			s->to_read++;
		if (dev->towrite) {
			s->to_write++;
			if (!FUNC11(R5_OVERWRITE, &dev->flags))
				s->non_overwrite++;
		}
		if (dev->written)
			s->written++;
		/* Prefer to use the replacement for reads, but only
		 * if it is recovered enough and has no bad blocks.
		 */
		rdev = FUNC7(conf->disks[i].replacement);
		if (rdev && !FUNC11(Faulty, &rdev->flags) &&
		    rdev->recovery_offset >= sh->sector + STRIPE_SECTORS &&
		    !FUNC3(rdev, sh->sector, STRIPE_SECTORS,
				 &first_bad, &bad_sectors))
			FUNC10(R5_ReadRepl, &dev->flags);
		else {
			if (rdev && !FUNC11(Faulty, &rdev->flags))
				FUNC10(R5_NeedReplace, &dev->flags);
			else
				FUNC2(R5_NeedReplace, &dev->flags);
			rdev = FUNC7(conf->disks[i].rdev);
			FUNC2(R5_ReadRepl, &dev->flags);
		}
		if (rdev && FUNC11(Faulty, &rdev->flags))
			rdev = NULL;
		if (rdev) {
			is_bad = FUNC3(rdev, sh->sector, STRIPE_SECTORS,
					     &first_bad, &bad_sectors);
			if (s->blocked_rdev == NULL
			    && (FUNC11(Blocked, &rdev->flags)
				|| is_bad < 0)) {
				if (is_bad < 0)
					FUNC10(BlockedBadBlocks,
						&rdev->flags);
				s->blocked_rdev = rdev;
				FUNC1(&rdev->nr_pending);
			}
		}
		FUNC2(R5_Insync, &dev->flags);
		if (!rdev)
			/* Not in-sync */;
		else if (is_bad) {
			/* also not in-sync */
			if (!FUNC11(WriteErrorSeen, &rdev->flags) &&
			    FUNC11(R5_UPTODATE, &dev->flags)) {
				/* treat as in-sync, but with a read error
				 * which we can now try to correct
				 */
				FUNC10(R5_Insync, &dev->flags);
				FUNC10(R5_ReadError, &dev->flags);
			}
		} else if (FUNC11(In_sync, &rdev->flags))
			FUNC10(R5_Insync, &dev->flags);
		else if (sh->sector + STRIPE_SECTORS <= rdev->recovery_offset)
			/* in sync if before recovery_offset */
			FUNC10(R5_Insync, &dev->flags);
		else if (FUNC11(R5_UPTODATE, &dev->flags) &&
			 FUNC11(R5_Expanded, &dev->flags))
			/* If we've reshaped into here, we assume it is Insync.
			 * We will shortly update recovery_offset to make
			 * it official.
			 */
			FUNC10(R5_Insync, &dev->flags);

		if (FUNC11(R5_WriteError, &dev->flags)) {
			/* This flag does not apply to '.replacement'
			 * only to .rdev, so make sure to check that*/
			struct md_rdev *rdev2 = FUNC7(
				conf->disks[i].rdev);
			if (rdev2 == rdev)
				FUNC2(R5_Insync, &dev->flags);
			if (rdev2 && !FUNC11(Faulty, &rdev2->flags)) {
				s->handle_bad_blocks = 1;
				FUNC1(&rdev2->nr_pending);
			} else
				FUNC2(R5_WriteError, &dev->flags);
		}
		if (FUNC11(R5_MadeGood, &dev->flags)) {
			/* This flag does not apply to '.replacement'
			 * only to .rdev, so make sure to check that*/
			struct md_rdev *rdev2 = FUNC7(
				conf->disks[i].rdev);
			if (rdev2 && !FUNC11(Faulty, &rdev2->flags)) {
				s->handle_bad_blocks = 1;
				FUNC1(&rdev2->nr_pending);
			} else
				FUNC2(R5_MadeGood, &dev->flags);
		}
		if (FUNC11(R5_MadeGoodRepl, &dev->flags)) {
			struct md_rdev *rdev2 = FUNC7(
				conf->disks[i].replacement);
			if (rdev2 && !FUNC11(Faulty, &rdev2->flags)) {
				s->handle_bad_blocks = 1;
				FUNC1(&rdev2->nr_pending);
			} else
				FUNC2(R5_MadeGoodRepl, &dev->flags);
		}
		if (!FUNC11(R5_Insync, &dev->flags)) {
			/* The ReadError flag will just be confusing now */
			FUNC2(R5_ReadError, &dev->flags);
			FUNC2(R5_ReWrite, &dev->flags);
		}
		if (FUNC11(R5_ReadError, &dev->flags))
			FUNC2(R5_Insync, &dev->flags);
		if (!FUNC11(R5_Insync, &dev->flags)) {
			if (s->failed < 2)
				s->failed_num[s->failed] = i;
			s->failed++;
			if (rdev && !FUNC11(Faulty, &rdev->flags))
				do_recovery = 1;
			else if (!rdev) {
				rdev = FUNC7(
				    conf->disks[i].replacement);
				if (rdev && !FUNC11(Faulty, &rdev->flags))
					do_recovery = 1;
			}
		}

		if (FUNC11(R5_InJournal, &dev->flags))
			s->injournal++;
		if (FUNC11(R5_InJournal, &dev->flags) && dev->written)
			s->just_cached++;
	}
	if (FUNC11(STRIPE_SYNCING, &sh->state)) {
		/* If there is a failed device being replaced,
		 *     we must be recovering.
		 * else if we are after recovery_cp, we must be syncing
		 * else if MD_RECOVERY_REQUESTED is set, we also are syncing.
		 * else we can only be replacing
		 * sync and recovery both need to read all devices, and so
		 * use the same flag.
		 */
		if (do_recovery ||
		    sh->sector >= conf->mddev->recovery_cp ||
		    FUNC11(MD_RECOVERY_REQUESTED, &(conf->mddev->recovery)))
			s->syncing = 1;
		else
			s->replacing = 1;
	}
	FUNC9();
}