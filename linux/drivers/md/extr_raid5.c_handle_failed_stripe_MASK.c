#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct stripe_head_state {scalar_t__ failed; scalar_t__ written; scalar_t__ to_write; int /*<<< orphan*/  to_read; } ;
struct stripe_head {int /*<<< orphan*/  state; TYPE_3__* dev; int /*<<< orphan*/  sector; int /*<<< orphan*/  stripe_lock; scalar_t__ overwrite_disks; int /*<<< orphan*/  batch_head; } ;
struct r5conf {scalar_t__ max_degraded; TYPE_4__* mddev; int /*<<< orphan*/  pending_full_writes; int /*<<< orphan*/  wait_for_overlap; TYPE_1__* disks; } ;
struct md_rdev {int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
struct TYPE_10__ {int /*<<< orphan*/  thread; int /*<<< orphan*/  bitmap; } ;
struct TYPE_9__ {scalar_t__ sector; int /*<<< orphan*/  flags; struct bio* toread; int /*<<< orphan*/  orig_page; int /*<<< orphan*/  page; struct bio* written; struct bio* towrite; } ;
struct TYPE_7__ {int /*<<< orphan*/  rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  R5_Insync ; 
 int /*<<< orphan*/  R5_LOCKED ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  R5_ReadError ; 
 int /*<<< orphan*/  R5_SkipCopy ; 
 int /*<<< orphan*/  R5_UPTODATE ; 
 int /*<<< orphan*/  R5_Wantfill ; 
 int /*<<< orphan*/  STRIPE_FULL_WRITE ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*) ; 
 struct bio* FUNC11 (struct bio*,scalar_t__) ; 
 struct md_rdev* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (struct md_rdev*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (struct md_rdev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC22(struct r5conf *conf, struct stripe_head *sh,
		     struct stripe_head_state *s, int disks)
{
	int i;
	FUNC0(sh->batch_head);
	for (i = disks; i--; ) {
		struct bio *bi;
		int bitmap_end = 0;

		if (FUNC20(R5_ReadError, &sh->dev[i].flags)) {
			struct md_rdev *rdev;
			FUNC13();
			rdev = FUNC12(conf->disks[i].rdev);
			if (rdev && FUNC20(In_sync, &rdev->flags) &&
			    !FUNC20(Faulty, &rdev->flags))
				FUNC3(&rdev->nr_pending);
			else
				rdev = NULL;
			FUNC14();
			if (rdev) {
				if (!FUNC16(
					    rdev,
					    sh->sector,
					    STRIPE_SECTORS, 0))
					FUNC8(conf->mddev, rdev);
				FUNC15(rdev, conf->mddev);
			}
		}
		FUNC17(&sh->stripe_lock);
		/* fail all writes first */
		bi = sh->dev[i].towrite;
		sh->dev[i].towrite = NULL;
		sh->overwrite_disks = 0;
		FUNC18(&sh->stripe_lock);
		if (bi)
			bitmap_end = 1;

		FUNC6(sh);

		if (FUNC19(R5_Overlap, &sh->dev[i].flags))
			FUNC21(&conf->wait_for_overlap);

		while (bi && bi->bi_iter.bi_sector <
			sh->dev[i].sector + STRIPE_SECTORS) {
			struct bio *nextbi = FUNC11(bi, sh->dev[i].sector);

			FUNC10(conf->mddev);
			FUNC4(bi);
			bi = nextbi;
		}
		if (bitmap_end)
			FUNC7(conf->mddev->bitmap, sh->sector,
					   STRIPE_SECTORS, 0, 0);
		bitmap_end = 0;
		/* and fail all 'written' */
		bi = sh->dev[i].written;
		sh->dev[i].written = NULL;
		if (FUNC19(R5_SkipCopy, &sh->dev[i].flags)) {
			FUNC1(FUNC20(R5_UPTODATE, &sh->dev[i].flags));
			sh->dev[i].page = sh->dev[i].orig_page;
		}

		if (bi) bitmap_end = 1;
		while (bi && bi->bi_iter.bi_sector <
		       sh->dev[i].sector + STRIPE_SECTORS) {
			struct bio *bi2 = FUNC11(bi, sh->dev[i].sector);

			FUNC10(conf->mddev);
			FUNC4(bi);
			bi = bi2;
		}

		/* fail any reads if this device is non-operational and
		 * the data has not reached the cache yet.
		 */
		if (!FUNC20(R5_Wantfill, &sh->dev[i].flags) &&
		    s->failed > conf->max_degraded &&
		    (!FUNC20(R5_Insync, &sh->dev[i].flags) ||
		      FUNC20(R5_ReadError, &sh->dev[i].flags))) {
			FUNC17(&sh->stripe_lock);
			bi = sh->dev[i].toread;
			sh->dev[i].toread = NULL;
			FUNC18(&sh->stripe_lock);
			if (FUNC19(R5_Overlap, &sh->dev[i].flags))
				FUNC21(&conf->wait_for_overlap);
			if (bi)
				s->to_read--;
			while (bi && bi->bi_iter.bi_sector <
			       sh->dev[i].sector + STRIPE_SECTORS) {
				struct bio *nextbi =
					FUNC11(bi, sh->dev[i].sector);

				FUNC4(bi);
				bi = nextbi;
			}
		}
		if (bitmap_end)
			FUNC7(conf->mddev->bitmap, sh->sector,
					   STRIPE_SECTORS, 0, 0);
		/* If we were in the middle of a write the parity block might
		 * still be locked - so just clear all R5_LOCKED flags
		 */
		FUNC5(R5_LOCKED, &sh->dev[i].flags);
	}
	s->to_write = 0;
	s->written = 0;

	if (FUNC19(STRIPE_FULL_WRITE, &sh->state))
		if (FUNC2(&conf->pending_full_writes))
			FUNC9(conf->mddev->thread);
}