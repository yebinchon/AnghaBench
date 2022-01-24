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
struct resync_pages {int dummy; } ;
struct r1conf {scalar_t__ fullsync; scalar_t__ cluster_sync_low; scalar_t__ cluster_sync_high; int raid_disks; int /*<<< orphan*/  recovery_disabled; TYPE_2__* mirrors; int /*<<< orphan*/ * nr_waiting; int /*<<< orphan*/  r1buf_pool; } ;
struct r1bio {int read_disk; struct bio** bios; int /*<<< orphan*/  remaining; scalar_t__ sectors; scalar_t__ state; scalar_t__ sector; struct mddev* mddev; } ;
struct page {int dummy; } ;
struct mddev {scalar_t__ dev_sectors; scalar_t__ curr_resync; scalar_t__ recovery_cp; scalar_t__ resync_max; scalar_t__ curr_resync_completed; scalar_t__ recovery; int /*<<< orphan*/ * bitmap; int /*<<< orphan*/  recovery_disabled; scalar_t__ sb_flags; struct r1conf* private; } ;
struct md_rdev {scalar_t__ data_offset; scalar_t__ flags; int /*<<< orphan*/  bdev; int /*<<< orphan*/  nr_pending; } ;
struct TYPE_4__ {scalar_t__ bi_sector; } ;
struct bio {scalar_t__ bi_end_io; int /*<<< orphan*/  bi_opf; TYPE_1__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* resync_info_update ) (struct mddev*,scalar_t__,scalar_t__) ;} ;
struct TYPE_5__ {struct md_rdev* rdev; } ;

/* Variables and functions */
 scalar_t__ CLUSTER_RESYNC_WINDOW_SECTORS ; 
 int /*<<< orphan*/  FailFast ; 
 int /*<<< orphan*/  Faulty ; 
 int /*<<< orphan*/  In_sync ; 
 int /*<<< orphan*/  MD_FAILFAST ; 
 int /*<<< orphan*/  MD_RECOVERY_CHECK ; 
 int /*<<< orphan*/  MD_RECOVERY_INTR ; 
 int /*<<< orphan*/  MD_RECOVERY_REQUESTED ; 
 int /*<<< orphan*/  MD_RECOVERY_SYNC ; 
 int /*<<< orphan*/  MD_SB_CHANGE_DEVS ; 
 scalar_t__ MaxSector ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  R1BIO_IsSync ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int RESYNC_PAGES ; 
 int RESYNC_SECTORS ; 
 int /*<<< orphan*/  WriteErrorSeen ; 
 int /*<<< orphan*/  WriteMostly ; 
 int FUNC0 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,struct page*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct r1conf*) ; 
 scalar_t__ end_sync_read ; 
 scalar_t__ end_sync_write ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 struct resync_pages* FUNC9 (struct bio*) ; 
 scalar_t__ FUNC10 (struct r1conf*) ; 
 scalar_t__ FUNC11 (struct md_rdev*,scalar_t__,int,scalar_t__*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int) ; 
 TYPE_3__* md_cluster_ops ; 
 int /*<<< orphan*/  FUNC16 (struct bio*,scalar_t__) ; 
 scalar_t__ FUNC17 (struct mddev*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct r1bio*) ; 
 struct r1bio* FUNC20 (struct r1conf*) ; 
 scalar_t__ FUNC21 (struct r1conf*,scalar_t__) ; 
 struct md_rdev* FUNC22 (struct md_rdev*) ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 scalar_t__ FUNC25 (struct md_rdev*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 struct page* FUNC26 (struct resync_pages*,int) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int FUNC28 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC30 (struct mddev*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC31 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static sector_t FUNC32(struct mddev *mddev, sector_t sector_nr,
				   int *skipped)
{
	struct r1conf *conf = mddev->private;
	struct r1bio *r1_bio;
	struct bio *bio;
	sector_t max_sector, nr_sectors;
	int disk = -1;
	int i;
	int wonly = -1;
	int write_targets = 0, read_targets = 0;
	sector_t sync_blocks;
	int still_degraded = 0;
	int good_sectors = RESYNC_SECTORS;
	int min_bad = 0; /* number of sectors that are bad in all devices */
	int idx = FUNC28(sector_nr);
	int page_idx = 0;

	if (!FUNC18(&conf->r1buf_pool))
		if (FUNC10(conf))
			return 0;

	max_sector = mddev->dev_sectors;
	if (sector_nr >= max_sector) {
		/* If we aborted, we need to abort the
		 * sync on the 'current' bitmap chunk (there will
		 * only be one in raid1 resync.
		 * We can find the current addess in mddev->curr_resync
		 */
		if (mddev->curr_resync < max_sector) /* aborted */
			FUNC14(mddev->bitmap, mddev->curr_resync,
					   &sync_blocks, 1);
		else /* completed sync */
			conf->fullsync = 0;

		FUNC12(mddev->bitmap);
		FUNC7(conf);

		if (FUNC17(mddev)) {
			conf->cluster_sync_low = 0;
			conf->cluster_sync_high = 0;
		}
		return 0;
	}

	if (mddev->bitmap == NULL &&
	    mddev->recovery_cp == MaxSector &&
	    !FUNC31(MD_RECOVERY_REQUESTED, &mddev->recovery) &&
	    conf->fullsync == 0) {
		*skipped = 1;
		return max_sector - sector_nr;
	}
	/* before building a request, check if we can skip these blocks..
	 * This call the bitmap_start_sync doesn't actually record anything
	 */
	if (!FUNC15(mddev->bitmap, sector_nr, &sync_blocks, 1) &&
	    !conf->fullsync && !FUNC31(MD_RECOVERY_REQUESTED, &mddev->recovery)) {
		/* We can skip this block, and probably several more */
		*skipped = 1;
		return sync_blocks;
	}

	/*
	 * If there is non-resync activity waiting for a turn, then let it
	 * though before starting on this new sync request.
	 */
	if (FUNC2(&conf->nr_waiting[idx]))
		FUNC27(1);

	/* we are incrementing sector_nr below. To be safe, we check against
	 * sector_nr + two times RESYNC_SECTORS
	 */

	FUNC13(mddev->bitmap, sector_nr,
		FUNC17(mddev) && (sector_nr + 2 * RESYNC_SECTORS > conf->cluster_sync_high));


	if (FUNC21(conf, sector_nr))
		return 0;

	r1_bio = FUNC20(conf);

	FUNC23();
	/*
	 * If we get a correctably read error during resync or recovery,
	 * we might want to read from a different device.  So we
	 * flag all drives that could conceivably be read from for READ,
	 * and any others (which will be non-In_sync devices) for WRITE.
	 * If a read fails, we try reading from something else for which READ
	 * is OK.
	 */

	r1_bio->mddev = mddev;
	r1_bio->sector = sector_nr;
	r1_bio->state = 0;
	FUNC29(R1BIO_IsSync, &r1_bio->state);
	/* make sure good_sectors won't go across barrier unit boundary */
	good_sectors = FUNC0(sector_nr, good_sectors);

	for (i = 0; i < conf->raid_disks * 2; i++) {
		struct md_rdev *rdev;
		bio = r1_bio->bios[i];

		rdev = FUNC22(conf->mirrors[i].rdev);
		if (rdev == NULL ||
		    FUNC31(Faulty, &rdev->flags)) {
			if (i < conf->raid_disks)
				still_degraded = 1;
		} else if (!FUNC31(In_sync, &rdev->flags)) {
			FUNC6(bio, REQ_OP_WRITE, 0);
			bio->bi_end_io = end_sync_write;
			write_targets ++;
		} else {
			/* may need to read from here */
			sector_t first_bad = MaxSector;
			int bad_sectors;

			if (FUNC11(rdev, sector_nr, good_sectors,
					&first_bad, &bad_sectors)) {
				if (first_bad > sector_nr)
					good_sectors = first_bad - sector_nr;
				else {
					bad_sectors -= (sector_nr - first_bad);
					if (min_bad == 0 ||
					    min_bad > bad_sectors)
						min_bad = bad_sectors;
				}
			}
			if (sector_nr < first_bad) {
				if (FUNC31(WriteMostly, &rdev->flags)) {
					if (wonly < 0)
						wonly = i;
				} else {
					if (disk < 0)
						disk = i;
				}
				FUNC6(bio, REQ_OP_READ, 0);
				bio->bi_end_io = end_sync_read;
				read_targets++;
			} else if (!FUNC31(WriteErrorSeen, &rdev->flags) &&
				FUNC31(MD_RECOVERY_SYNC, &mddev->recovery) &&
				!FUNC31(MD_RECOVERY_CHECK, &mddev->recovery)) {
				/*
				 * The device is suitable for reading (InSync),
				 * but has bad block(s) here. Let's try to correct them,
				 * if we are doing resync or repair. Otherwise, leave
				 * this device alone for this sync request.
				 */
				FUNC6(bio, REQ_OP_WRITE, 0);
				bio->bi_end_io = end_sync_write;
				write_targets++;
			}
		}
		if (bio->bi_end_io) {
			FUNC1(&rdev->nr_pending);
			bio->bi_iter.bi_sector = sector_nr + rdev->data_offset;
			FUNC5(bio, rdev->bdev);
			if (FUNC31(FailFast, &rdev->flags))
				bio->bi_opf |= MD_FAILFAST;
		}
	}
	FUNC24();
	if (disk < 0)
		disk = wonly;
	r1_bio->read_disk = disk;

	if (read_targets == 0 && min_bad > 0) {
		/* These sectors are bad on all InSync devices, so we
		 * need to mark them bad on all write targets
		 */
		int ok = 1;
		for (i = 0 ; i < conf->raid_disks * 2 ; i++)
			if (r1_bio->bios[i]->bi_end_io == end_sync_write) {
				struct md_rdev *rdev = conf->mirrors[i].rdev;
				ok = FUNC25(rdev, sector_nr,
							min_bad, 0
					) && ok;
			}
		FUNC29(MD_SB_CHANGE_DEVS, &mddev->sb_flags);
		*skipped = 1;
		FUNC19(r1_bio);

		if (!ok) {
			/* Cannot record the badblocks, so need to
			 * abort the resync.
			 * If there are multiple read targets, could just
			 * fail the really bad ones ???
			 */
			conf->recovery_disabled = mddev->recovery_disabled;
			FUNC29(MD_RECOVERY_INTR, &mddev->recovery);
			return 0;
		} else
			return min_bad;

	}
	if (min_bad > 0 && min_bad < good_sectors) {
		/* only resync enough to reach the next bad->good
		 * transition */
		good_sectors = min_bad;
	}

	if (FUNC31(MD_RECOVERY_SYNC, &mddev->recovery) && read_targets > 0)
		/* extra read targets are also write targets */
		write_targets += read_targets-1;

	if (write_targets == 0 || read_targets == 0) {
		/* There is nowhere to write, so all non-sync
		 * drives must be failed - so we are finished
		 */
		sector_t rv;
		if (min_bad > 0)
			max_sector = sector_nr + min_bad;
		rv = max_sector - sector_nr;
		*skipped = 1;
		FUNC19(r1_bio);
		return rv;
	}

	if (max_sector > mddev->resync_max)
		max_sector = mddev->resync_max; /* Don't do IO beyond here */
	if (max_sector > sector_nr + good_sectors)
		max_sector = sector_nr + good_sectors;
	nr_sectors = 0;
	sync_blocks = 0;
	do {
		struct page *page;
		int len = PAGE_SIZE;
		if (sector_nr + (len>>9) > max_sector)
			len = (max_sector - sector_nr) << 9;
		if (len == 0)
			break;
		if (sync_blocks == 0) {
			if (!FUNC15(mddev->bitmap, sector_nr,
						  &sync_blocks, still_degraded) &&
			    !conf->fullsync &&
			    !FUNC31(MD_RECOVERY_REQUESTED, &mddev->recovery))
				break;
			if ((len >> 9) > sync_blocks)
				len = sync_blocks<<9;
		}

		for (i = 0 ; i < conf->raid_disks * 2; i++) {
			struct resync_pages *rp;

			bio = r1_bio->bios[i];
			rp = FUNC9(bio);
			if (bio->bi_end_io) {
				page = FUNC26(rp, page_idx);

				/*
				 * won't fail because the vec table is big
				 * enough to hold all these pages
				 */
				FUNC4(bio, page, len, 0);
			}
		}
		nr_sectors += len>>9;
		sector_nr += len>>9;
		sync_blocks -= (len>>9);
	} while (++page_idx < RESYNC_PAGES);

	r1_bio->sectors = nr_sectors;

	if (FUNC17(mddev) &&
			conf->cluster_sync_high < sector_nr + nr_sectors) {
		conf->cluster_sync_low = mddev->curr_resync_completed;
		conf->cluster_sync_high = conf->cluster_sync_low + CLUSTER_RESYNC_WINDOW_SECTORS;
		/* Send resync message */
		md_cluster_ops->resync_info_update(mddev,
				conf->cluster_sync_low,
				conf->cluster_sync_high);
	}

	/* For a user-requested sync, we read all readable devices and do a
	 * compare
	 */
	if (FUNC31(MD_RECOVERY_REQUESTED, &mddev->recovery)) {
		FUNC3(&r1_bio->remaining, read_targets);
		for (i = 0; i < conf->raid_disks * 2 && read_targets; i++) {
			bio = r1_bio->bios[i];
			if (bio->bi_end_io == end_sync_read) {
				read_targets--;
				FUNC16(bio, nr_sectors);
				if (read_targets == 1)
					bio->bi_opf &= ~MD_FAILFAST;
				FUNC8(bio);
			}
		}
	} else {
		FUNC3(&r1_bio->remaining, 1);
		bio = r1_bio->bios[r1_bio->read_disk];
		FUNC16(bio, nr_sectors);
		if (read_targets == 1)
			bio->bi_opf &= ~MD_FAILFAST;
		FUNC8(bio);
	}
	return nr_sectors;
}