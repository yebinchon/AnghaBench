#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stripe_head {int disks; int pd_idx; int /*<<< orphan*/  stripe_lock; TYPE_2__* dev; int /*<<< orphan*/  state; scalar_t__ bm_seq; scalar_t__ batch_head; scalar_t__ sector; int /*<<< orphan*/  overwrite_disks; struct r5conf* raid_conf; } ;
struct r5conf {int chunk_sectors; scalar_t__ seq_flush; TYPE_3__* mddev; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_1__ bi_iter; struct bio* bi_next; int /*<<< orphan*/  bi_write_hint; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {scalar_t__ bitmap; } ;
struct TYPE_5__ {scalar_t__ sector; int /*<<< orphan*/  flags; struct bio* towrite; struct bio* toread; int /*<<< orphan*/  write_hint; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  R5_OVERWRITE ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  STRIPE_BATCH_READY ; 
 int /*<<< orphan*/  STRIPE_BITMAP_PENDING ; 
 int /*<<< orphan*/  STRIPE_BIT_DELAY ; 
 scalar_t__ STRIPE_SECTORS ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned long long,unsigned long long,...) ; 
 struct bio* FUNC7 (struct bio*,scalar_t__) ; 
 scalar_t__ FUNC8 (struct r5conf*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct r5conf*,struct stripe_head*) ; 
 scalar_t__ FUNC13 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC15(struct stripe_head *sh, struct bio *bi, int dd_idx,
			  int forwrite, int previous)
{
	struct bio **bip;
	struct r5conf *conf = sh->raid_conf;
	int firstwrite=0;

	FUNC6("adding bi b#%llu to stripe s#%llu\n",
		(unsigned long long)bi->bi_iter.bi_sector,
		(unsigned long long)sh->sector);

	FUNC10(&sh->stripe_lock);
	sh->dev[dd_idx].write_hint = bi->bi_write_hint;
	/* Don't allow new IO added to stripes in batch list */
	if (sh->batch_head)
		goto overlap;
	if (forwrite) {
		bip = &sh->dev[dd_idx].towrite;
		if (*bip == NULL)
			firstwrite = 1;
	} else
		bip = &sh->dev[dd_idx].toread;
	while (*bip && (*bip)->bi_iter.bi_sector < bi->bi_iter.bi_sector) {
		if (FUNC1(*bip) > bi->bi_iter.bi_sector)
			goto overlap;
		bip = & (*bip)->bi_next;
	}
	if (*bip && (*bip)->bi_iter.bi_sector < FUNC1(bi))
		goto overlap;

	if (forwrite && FUNC8(conf)) {
		/*
		 * With PPL only writes to consecutive data chunks within a
		 * stripe are allowed because for a single stripe_head we can
		 * only have one PPL entry at a time, which describes one data
		 * range. Not really an overlap, but wait_for_overlap can be
		 * used to handle this.
		 */
		sector_t sector;
		sector_t first = 0;
		sector_t last = 0;
		int count = 0;
		int i;

		for (i = 0; i < sh->disks; i++) {
			if (i != sh->pd_idx &&
			    (i == dd_idx || sh->dev[i].towrite)) {
				sector = sh->dev[i].sector;
				if (count == 0 || sector < first)
					first = sector;
				if (sector > last)
					last = sector;
				count++;
			}
		}

		if (first + conf->chunk_sectors * (count - 1) != last)
			goto overlap;
	}

	if (!forwrite || previous)
		FUNC3(STRIPE_BATCH_READY, &sh->state);

	FUNC0(*bip && bi->bi_next && (*bip) != bi->bi_next);
	if (*bip)
		bi->bi_next = *bip;
	*bip = bi;
	FUNC2(bi);
	FUNC5(conf->mddev, bi);

	if (forwrite) {
		/* check if page is covered */
		sector_t sector = sh->dev[dd_idx].sector;
		for (bi=sh->dev[dd_idx].towrite;
		     sector < sh->dev[dd_idx].sector + STRIPE_SECTORS &&
			     bi && bi->bi_iter.bi_sector <= sector;
		     bi = FUNC7(bi, sh->dev[dd_idx].sector)) {
			if (FUNC1(bi) >= sector)
				sector = FUNC1(bi);
		}
		if (sector >= sh->dev[dd_idx].sector + STRIPE_SECTORS)
			if (!FUNC14(R5_OVERWRITE, &sh->dev[dd_idx].flags))
				sh->overwrite_disks++;
	}

	FUNC6("added bi b#%llu to stripe s#%llu, disk %d.\n",
		(unsigned long long)(*bip)->bi_iter.bi_sector,
		(unsigned long long)sh->sector, dd_idx);

	if (conf->mddev->bitmap && firstwrite) {
		/* Cannot hold spinlock over bitmap_startwrite,
		 * but must ensure this isn't added to a batch until
		 * we have added to the bitmap and set bm_seq.
		 * So set STRIPE_BITMAP_PENDING to prevent
		 * batching.
		 * If multiple add_stripe_bio() calls race here they
		 * much all set STRIPE_BITMAP_PENDING.  So only the first one
		 * to complete "bitmap_startwrite" gets to set
		 * STRIPE_BIT_DELAY.  This is important as once a stripe
		 * is added to a batch, STRIPE_BIT_DELAY cannot be changed
		 * any more.
		 */
		FUNC9(STRIPE_BITMAP_PENDING, &sh->state);
		FUNC11(&sh->stripe_lock);
		FUNC4(conf->mddev->bitmap, sh->sector,
				     STRIPE_SECTORS, 0);
		FUNC10(&sh->stripe_lock);
		FUNC3(STRIPE_BITMAP_PENDING, &sh->state);
		if (!sh->batch_head) {
			sh->bm_seq = conf->seq_flush+1;
			FUNC9(STRIPE_BIT_DELAY, &sh->state);
		}
	}
	FUNC11(&sh->stripe_lock);

	if (FUNC13(sh))
		FUNC12(conf, sh);
	return 1;

 overlap:
	FUNC9(R5_Overlap, &sh->dev[dd_idx].flags);
	FUNC11(&sh->stripe_lock);
	return 0;
}