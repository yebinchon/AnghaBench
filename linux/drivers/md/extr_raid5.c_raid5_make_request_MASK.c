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
struct stripe_head {int /*<<< orphan*/  state; struct stripe_head* batch_head; } ;
struct r5conf {scalar_t__ reshape_progress; int reshape_safe; int /*<<< orphan*/  wait_for_overlap; int /*<<< orphan*/  preread_active_stripes; int /*<<< orphan*/  gen_lock; int /*<<< orphan*/  device_lock; } ;
struct mddev {scalar_t__ degraded; scalar_t__ reshape_position; int /*<<< orphan*/  thread; scalar_t__ reshape_backwards; struct r5conf* private; } ;
struct TYPE_2__ {int bi_sector; } ;
struct bio {int bi_opf; int /*<<< orphan*/  bi_status; int /*<<< orphan*/ * bi_next; TYPE_1__ bi_iter; } ;
typedef  int sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_STS_IOERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 scalar_t__ MaxSector ; 
 int const READ ; 
 scalar_t__ REQ_OP_DISCARD ; 
 int REQ_PREFLUSH ; 
 int REQ_RAHEAD ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_EXPANDING ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 int /*<<< orphan*/  STRIPE_R5C_PREFLUSH ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int const WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct stripe_head*,struct bio*,int,int const,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bio*) ; 
 int FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 scalar_t__ FUNC6 (struct bio*) ; 
 struct bio* FUNC7 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct r5conf*,struct bio*) ; 
 int /*<<< orphan*/  FUNC11 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC15 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC16 (char*,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (struct r5conf*,int,int,int*,int /*<<< orphan*/ *) ; 
 struct stripe_head* FUNC19 (struct r5conf*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct stripe_head*) ; 
 int FUNC21 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC23 (struct mddev*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC30 (int) ; 
 int /*<<< orphan*/  w ; 

__attribute__((used)) static bool FUNC31(struct mddev *mddev, struct bio * bi)
{
	struct r5conf *conf = mddev->private;
	int dd_idx;
	sector_t new_sector;
	sector_t logical_sector, last_sector;
	struct stripe_head *sh;
	const int rw = FUNC3(bi);
	FUNC0(w);
	bool do_prepare;
	bool do_flush = false;

	if (FUNC30(bi->bi_opf & REQ_PREFLUSH)) {
		int ret = FUNC10(conf, bi);

		if (ret == 0)
			return true;
		if (ret == -ENODEV) {
			FUNC12(mddev, bi);
			return true;
		}
		/* ret == -EAGAIN, fallback */
		/*
		 * if r5l_handle_flush_request() didn't clear REQ_PREFLUSH,
		 * we need to flush journal device
		 */
		do_flush = bi->bi_opf & REQ_PREFLUSH;
	}

	if (!FUNC15(mddev, bi))
		return false;
	/*
	 * If array is degraded, better not do chunk aligned read because
	 * later we might have to read it again in order to reconstruct
	 * data on failed drives.
	 */
	if (rw == READ && mddev->degraded == 0 &&
	    mddev->reshape_position == MaxSector) {
		bi = FUNC7(mddev, bi);
		if (!bi)
			return true;
	}

	if (FUNC30(FUNC6(bi) == REQ_OP_DISCARD)) {
		FUNC11(mddev, bi);
		FUNC14(mddev);
		return true;
	}

	logical_sector = bi->bi_iter.bi_sector & ~((sector_t)STRIPE_SECTORS-1);
	last_sector = FUNC4(bi);
	bi->bi_next = NULL;

	FUNC17(&conf->wait_for_overlap, &w, TASK_UNINTERRUPTIBLE);
	for (;logical_sector < last_sector; logical_sector += STRIPE_SECTORS) {
		int previous;
		int seq;

		do_prepare = false;
	retry:
		seq = FUNC21(&conf->gen_lock);
		previous = 0;
		if (do_prepare)
			FUNC17(&conf->wait_for_overlap, &w,
				TASK_UNINTERRUPTIBLE);
		if (FUNC30(conf->reshape_progress != MaxSector)) {
			/* spinlock is needed as reshape_progress may be
			 * 64bit on a 32bit platform, and so it might be
			 * possible to see a half-updated value
			 * Of course reshape_progress could change after
			 * the lock is dropped, so once we get a reference
			 * to the stripe that we think it is, we will have
			 * to check again.
			 */
			FUNC26(&conf->device_lock);
			if (mddev->reshape_backwards
			    ? logical_sector < conf->reshape_progress
			    : logical_sector >= conf->reshape_progress) {
				previous = 1;
			} else {
				if (mddev->reshape_backwards
				    ? logical_sector < conf->reshape_safe
				    : logical_sector >= conf->reshape_safe) {
					FUNC27(&conf->device_lock);
					FUNC24();
					do_prepare = true;
					goto retry;
				}
			}
			FUNC27(&conf->device_lock);
		}

		new_sector = FUNC18(conf, logical_sector,
						  previous,
						  &dd_idx, NULL);
		FUNC16("raid456: raid5_make_request, sector %llu logical %llu\n",
			(unsigned long long)new_sector,
			(unsigned long long)logical_sector);

		sh = FUNC19(conf, new_sector, previous,
				       (bi->bi_opf & REQ_RAHEAD), 0);
		if (sh) {
			if (FUNC30(previous)) {
				/* expansion might have moved on while waiting for a
				 * stripe, so we must do the range check again.
				 * Expansion could still move past after this
				 * test, but as we are holding a reference to
				 * 'sh', we know that if that happens,
				 *  STRIPE_EXPANDING will get set and the expansion
				 * won't proceed until we finish with the stripe.
				 */
				int must_retry = 0;
				FUNC26(&conf->device_lock);
				if (mddev->reshape_backwards
				    ? logical_sector >= conf->reshape_progress
				    : logical_sector < conf->reshape_progress)
					/* mismatch, need to try again */
					must_retry = 1;
				FUNC27(&conf->device_lock);
				if (must_retry) {
					FUNC20(sh);
					FUNC24();
					do_prepare = true;
					goto retry;
				}
			}
			if (FUNC22(&conf->gen_lock, seq)) {
				/* Might have got the wrong stripe_head
				 * by accident
				 */
				FUNC20(sh);
				goto retry;
			}

			if (FUNC29(STRIPE_EXPANDING, &sh->state) ||
			    !FUNC1(sh, bi, dd_idx, rw, previous)) {
				/* Stripe is busy expanding or
				 * add failed due to overlap.  Flush everything
				 * and wait a while
				 */
				FUNC13(mddev->thread);
				FUNC20(sh);
				FUNC24();
				do_prepare = true;
				goto retry;
			}
			if (do_flush) {
				FUNC25(STRIPE_R5C_PREFLUSH, &sh->state);
				/* we only need flush for one stripe */
				do_flush = false;
			}

			if (!sh->batch_head)
				FUNC25(STRIPE_HANDLE, &sh->state);
			FUNC8(STRIPE_DELAYED, &sh->state);
			if ((!sh->batch_head || sh == sh->batch_head) &&
			    (bi->bi_opf & REQ_SYNC) &&
			    !FUNC28(STRIPE_PREREAD_ACTIVE, &sh->state))
				FUNC2(&conf->preread_active_stripes);
			FUNC23(mddev, sh);
		} else {
			/* cannot get stripe for read-ahead, just give-up */
			bi->bi_status = BLK_STS_IOERR;
			break;
		}
	}
	FUNC9(&conf->wait_for_overlap, &w);

	if (rw == WRITE)
		FUNC14(mddev);
	FUNC5(bi);
	return true;
}