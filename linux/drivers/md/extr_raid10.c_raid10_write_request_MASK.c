#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct r10conf {scalar_t__ reshape_safe; scalar_t__ reshape_progress; scalar_t__ pending_count; int copies; int /*<<< orphan*/  bio_split; int /*<<< orphan*/  mddev; TYPE_1__* mirrors; int /*<<< orphan*/  wait_barrier; } ;
struct r10bio {scalar_t__ sectors; int read_slot; TYPE_3__* devs; int /*<<< orphan*/  sector; int /*<<< orphan*/  remaining; struct bio* master_bio; int /*<<< orphan*/  state; } ;
struct mddev {scalar_t__ reshape_position; int /*<<< orphan*/  bitmap; int /*<<< orphan*/  thread; int /*<<< orphan*/  sb_flags; int /*<<< orphan*/  sb_wait; scalar_t__ reshape_backwards; int /*<<< orphan*/  recovery; struct r10conf* private; } ;
struct md_rdev {int /*<<< orphan*/  raid_disk; int /*<<< orphan*/  nr_pending; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {scalar_t__ bi_sector; } ;
struct bio {TYPE_2__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_8__ {scalar_t__ (* area_resyncing ) (struct mddev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int devnum; scalar_t__ addr; struct bio* repl_bio; struct bio* bio; } ;
struct TYPE_5__ {struct md_rdev* rdev; struct md_rdev* replacement; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Blocked ; 
 int /*<<< orphan*/  BlockedBadBlocks ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int /*<<< orphan*/  MD_RECOVERY_RESHAPE ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 int /*<<< orphan*/  MD_SB_CHANGE_PENDING ; 
 int /*<<< orphan*/  R10BIO_Degraded ; 
 int /*<<< orphan*/  TASK_IDLE ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  FUNC2 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*) ; 
 int FUNC7 (struct bio*) ; 
 struct bio* FUNC8 (struct bio*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct bio*) ; 
 int FUNC11 (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ; 
 scalar_t__ max_queued_requests ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_4__* md_cluster_ops ; 
 int /*<<< orphan*/  FUNC13 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC16 (struct r10bio*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct r10conf*,struct r10bio*) ; 
 int /*<<< orphan*/  FUNC19 (struct mddev*,char*,...) ; 
 int /*<<< orphan*/  FUNC20 (struct mddev*,struct r10bio*,struct bio*,int,int) ; 
 struct md_rdev* FUNC21 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 (struct md_rdev*,struct mddev*) ; 
 int /*<<< orphan*/  FUNC25 (struct mddev*,struct r10conf*,struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC26 () ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC29 () ; 
 scalar_t__ FUNC30 (struct mddev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC31 (struct mddev*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 struct md_rdev* FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC33 (struct md_rdev*) ; 
 int /*<<< orphan*/  w ; 
 int /*<<< orphan*/  FUNC34 (struct r10conf*) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC36(struct mddev *mddev, struct bio *bio,
				 struct r10bio *r10_bio)
{
	struct r10conf *conf = mddev->private;
	int i;
	struct md_rdev *blocked_rdev;
	sector_t sectors;
	int max_sectors;

	if ((FUNC15(mddev) &&
	     md_cluster_ops->area_resyncing(mddev, WRITE,
					    bio->bi_iter.bi_sector,
					    FUNC6(bio)))) {
		FUNC1(w);
		for (;;) {
			FUNC17(&conf->wait_barrier,
					&w, TASK_IDLE);
			if (!md_cluster_ops->area_resyncing(mddev, WRITE,
				 bio->bi_iter.bi_sector, FUNC6(bio)))
				break;
			FUNC26();
		}
		FUNC9(&conf->wait_barrier, &w);
	}

	sectors = r10_bio->sectors;
	FUNC25(mddev, conf, bio, sectors);
	if (FUNC32(MD_RECOVERY_RESHAPE, &mddev->recovery) &&
	    (mddev->reshape_backwards
	     ? (bio->bi_iter.bi_sector < conf->reshape_safe &&
		bio->bi_iter.bi_sector + sectors > conf->reshape_progress)
	     : (bio->bi_iter.bi_sector + sectors > conf->reshape_safe &&
		bio->bi_iter.bi_sector < conf->reshape_progress))) {
		/* Need to update reshape_position in metadata */
		mddev->reshape_position = conf->reshape_progress;
		FUNC28(&mddev->sb_flags, 0,
			      FUNC0(MD_SB_CHANGE_DEVS) | FUNC0(MD_SB_CHANGE_PENDING));
		FUNC14(mddev->thread);
		FUNC19(conf->mddev, "wait reshape metadata");
		FUNC35(mddev->sb_wait,
			   !FUNC32(MD_SB_CHANGE_PENDING, &mddev->sb_flags));

		conf->reshape_safe = mddev->reshape_position;
	}

	if (conf->pending_count >= max_queued_requests) {
		FUNC14(mddev->thread);
		FUNC19(mddev, "wait queued");
		FUNC35(conf->wait_barrier,
			   conf->pending_count < max_queued_requests);
	}
	/* first select target devices under rcu_lock and
	 * inc refcount on their rdev.  Record them by setting
	 * bios[x] to bio
	 * If there are known/acknowledged bad blocks on any device
	 * on which we have seen a write error, we want to avoid
	 * writing to those blocks.  This potentially requires several
	 * writes to write around the bad blocks.  Each set of writes
	 * gets its own r10_bio with a set of bios attached.
	 */

	r10_bio->read_slot = -1; /* make sure repl_bio gets freed */
	FUNC18(conf, r10_bio);
retry_write:
	blocked_rdev = NULL;
	FUNC22();
	max_sectors = r10_bio->sectors;

	for (i = 0;  i < conf->copies; i++) {
		int d = r10_bio->devs[i].devnum;
		struct md_rdev *rdev = FUNC21(conf->mirrors[d].rdev);
		struct md_rdev *rrdev = FUNC21(
			conf->mirrors[d].replacement);
		if (rdev == rrdev)
			rrdev = NULL;
		if (rdev && FUNC33(FUNC32(Blocked, &rdev->flags))) {
			FUNC3(&rdev->nr_pending);
			blocked_rdev = rdev;
			break;
		}
		if (rrdev && FUNC33(FUNC32(Blocked, &rrdev->flags))) {
			FUNC3(&rrdev->nr_pending);
			blocked_rdev = rrdev;
			break;
		}
		if (rdev && (FUNC32(Faulty, &rdev->flags)))
			rdev = NULL;
		if (rrdev && (FUNC32(Faulty, &rrdev->flags)))
			rrdev = NULL;

		r10_bio->devs[i].bio = NULL;
		r10_bio->devs[i].repl_bio = NULL;

		if (!rdev && !rrdev) {
			FUNC27(R10BIO_Degraded, &r10_bio->state);
			continue;
		}
		if (rdev && FUNC32(WriteErrorSeen, &rdev->flags)) {
			sector_t first_bad;
			sector_t dev_sector = r10_bio->devs[i].addr;
			int bad_sectors;
			int is_bad;

			is_bad = FUNC11(rdev, dev_sector, max_sectors,
					     &first_bad, &bad_sectors);
			if (is_bad < 0) {
				/* Mustn't write here until the bad block
				 * is acknowledged
				 */
				FUNC3(&rdev->nr_pending);
				FUNC27(BlockedBadBlocks, &rdev->flags);
				blocked_rdev = rdev;
				break;
			}
			if (is_bad && first_bad <= dev_sector) {
				/* Cannot write here at all */
				bad_sectors -= (dev_sector - first_bad);
				if (bad_sectors < max_sectors)
					/* Mustn't write more than bad_sectors
					 * to other devices yet
					 */
					max_sectors = bad_sectors;
				/* We don't set R10BIO_Degraded as that
				 * only applies if the disk is missing,
				 * so it might be re-added, and we want to
				 * know to recover this chunk.
				 * In this case the device is here, and the
				 * fact that this chunk is not in-sync is
				 * recorded in the bad block log.
				 */
				continue;
			}
			if (is_bad) {
				int good_sectors = first_bad - dev_sector;
				if (good_sectors < max_sectors)
					max_sectors = good_sectors;
			}
		}
		if (rdev) {
			r10_bio->devs[i].bio = bio;
			FUNC3(&rdev->nr_pending);
		}
		if (rrdev) {
			r10_bio->devs[i].repl_bio = bio;
			FUNC3(&rrdev->nr_pending);
		}
	}
	FUNC23();

	if (FUNC33(blocked_rdev)) {
		/* Have to wait for this device to get unblocked, then retry */
		int j;
		int d;

		for (j = 0; j < i; j++) {
			if (r10_bio->devs[j].bio) {
				d = r10_bio->devs[j].devnum;
				FUNC24(conf->mirrors[d].rdev, mddev);
			}
			if (r10_bio->devs[j].repl_bio) {
				struct md_rdev *rdev;
				d = r10_bio->devs[j].devnum;
				rdev = conf->mirrors[d].replacement;
				if (!rdev) {
					/* Race with remove_disk */
					FUNC29();
					rdev = conf->mirrors[d].rdev;
				}
				FUNC24(rdev, mddev);
			}
		}
		FUNC2(conf);
		FUNC19(conf->mddev, "wait rdev %d blocked", blocked_rdev->raid_disk);
		FUNC13(blocked_rdev, mddev);
		FUNC34(conf);
		goto retry_write;
	}

	if (max_sectors < r10_bio->sectors)
		r10_bio->sectors = max_sectors;

	if (r10_bio->sectors < FUNC7(bio)) {
		struct bio *split = FUNC8(bio, r10_bio->sectors,
					      GFP_NOIO, &conf->bio_split);
		FUNC5(split, bio);
		FUNC2(conf);
		FUNC10(bio);
		FUNC34(conf);
		bio = split;
		r10_bio->master_bio = bio;
	}

	FUNC4(&r10_bio->remaining, 1);
	FUNC12(mddev->bitmap, r10_bio->sector, r10_bio->sectors, 0);

	for (i = 0; i < conf->copies; i++) {
		if (r10_bio->devs[i].bio)
			FUNC20(mddev, r10_bio, bio, false, i);
		if (r10_bio->devs[i].repl_bio)
			FUNC20(mddev, r10_bio, bio, true, i);
	}
	FUNC16(r10_bio);
}