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
struct stripe_head {size_t pd_idx; int qd_idx; int /*<<< orphan*/  state; scalar_t__ bm_seq; int /*<<< orphan*/  sector; int /*<<< orphan*/  stripe_lock; scalar_t__ overwrite_disks; TYPE_2__* dev; } ;
struct r5conf {int chunk_sectors; int raid_disks; int max_degraded; int /*<<< orphan*/  preread_active_stripes; scalar_t__ seq_flush; TYPE_3__* mddev; int /*<<< orphan*/  wait_for_overlap; } ;
struct mddev {scalar_t__ reshape_position; int /*<<< orphan*/  bitmap; struct r5conf* private; } ;
struct TYPE_4__ {int bi_sector; } ;
struct bio {int /*<<< orphan*/ * bi_next; TYPE_1__ bi_iter; } ;
typedef  int sector_t ;
struct TYPE_6__ {scalar_t__ bitmap; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; struct bio* towrite; scalar_t__ toread; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 scalar_t__ MaxSector ; 
 int /*<<< orphan*/  R5_OVERWRITE ; 
 int /*<<< orphan*/  R5_Overlap ; 
 int /*<<< orphan*/  STRIPE_BIT_DELAY ; 
 int /*<<< orphan*/  STRIPE_DELAYED ; 
 int /*<<< orphan*/  STRIPE_DISCARD ; 
 int /*<<< orphan*/  STRIPE_HANDLE ; 
 int /*<<< orphan*/  STRIPE_PREREAD_ACTIVE ; 
 scalar_t__ STRIPE_SECTORS ; 
 int /*<<< orphan*/  STRIPE_SYNCING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct mddev*,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct stripe_head* FUNC11 (struct r5conf*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC13 (struct mddev*,struct stripe_head*) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  w ; 

__attribute__((used)) static void FUNC21(struct mddev *mddev, struct bio *bi)
{
	struct r5conf *conf = mddev->private;
	sector_t logical_sector, last_sector;
	struct stripe_head *sh;
	int stripe_sectors;

	if (mddev->reshape_position != MaxSector)
		/* Skip discard while reshape is happening */
		return;

	logical_sector = bi->bi_iter.bi_sector & ~((sector_t)STRIPE_SECTORS-1);
	last_sector = FUNC3(bi);

	bi->bi_next = NULL;

	stripe_sectors = conf->chunk_sectors *
		(conf->raid_disks - conf->max_degraded);
	logical_sector = FUNC1(logical_sector,
					       stripe_sectors);
	FUNC15(last_sector, stripe_sectors);

	logical_sector *= conf->chunk_sectors;
	last_sector *= conf->chunk_sectors;

	for (; logical_sector < last_sector;
	     logical_sector += STRIPE_SECTORS) {
		FUNC0(w);
		int d;
	again:
		sh = FUNC11(conf, logical_sector, 0, 0, 0);
		FUNC10(&conf->wait_for_overlap, &w,
				TASK_UNINTERRUPTIBLE);
		FUNC16(R5_Overlap, &sh->dev[sh->pd_idx].flags);
		if (FUNC20(STRIPE_SYNCING, &sh->state)) {
			FUNC12(sh);
			FUNC14();
			goto again;
		}
		FUNC6(R5_Overlap, &sh->dev[sh->pd_idx].flags);
		FUNC17(&sh->stripe_lock);
		for (d = 0; d < conf->raid_disks; d++) {
			if (d == sh->pd_idx || d == sh->qd_idx)
				continue;
			if (sh->dev[d].towrite || sh->dev[d].toread) {
				FUNC16(R5_Overlap, &sh->dev[d].flags);
				FUNC18(&sh->stripe_lock);
				FUNC12(sh);
				FUNC14();
				goto again;
			}
		}
		FUNC16(STRIPE_DISCARD, &sh->state);
		FUNC7(&conf->wait_for_overlap, &w);
		sh->overwrite_disks = 0;
		for (d = 0; d < conf->raid_disks; d++) {
			if (d == sh->pd_idx || d == sh->qd_idx)
				continue;
			sh->dev[d].towrite = bi;
			FUNC16(R5_OVERWRITE, &sh->dev[d].flags);
			FUNC5(bi);
			FUNC9(mddev, bi);
			sh->overwrite_disks++;
		}
		FUNC18(&sh->stripe_lock);
		if (conf->mddev->bitmap) {
			for (d = 0;
			     d < conf->raid_disks - conf->max_degraded;
			     d++)
				FUNC8(mddev->bitmap,
						     sh->sector,
						     STRIPE_SECTORS,
						     0);
			sh->bm_seq = conf->seq_flush + 1;
			FUNC16(STRIPE_BIT_DELAY, &sh->state);
		}

		FUNC16(STRIPE_HANDLE, &sh->state);
		FUNC6(STRIPE_DELAYED, &sh->state);
		if (!FUNC19(STRIPE_PREREAD_ACTIVE, &sh->state))
			FUNC2(&conf->preread_active_stripes);
		FUNC13(mddev, sh);
	}

	FUNC4(bi);
}