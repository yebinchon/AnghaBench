#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct journal_entry {int dummy; } ;
struct TYPE_12__ {unsigned int n_sectors; scalar_t__ logical_sector; } ;
struct TYPE_9__ {int bi_size; } ;
struct dm_integrity_io {int /*<<< orphan*/  work; TYPE_5__ range; int /*<<< orphan*/  orig_bi_end_io; int /*<<< orphan*/  orig_bi_integrity; int /*<<< orphan*/  orig_bi_partno; int /*<<< orphan*/  orig_bi_disk; TYPE_2__ orig_bi_iter; struct completion* completion; scalar_t__ in_flight; scalar_t__ write; struct dm_integrity_c* ic; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; } ;
struct dm_integrity_c {char mode; unsigned int free_section; unsigned int free_section_entry; unsigned int journal_section_entries; unsigned int n_uncommitted_sections; unsigned int sectors_per_block; unsigned int journal_entries; int /*<<< orphan*/  metadata_wq; int /*<<< orphan*/  recalc_bitmap; TYPE_4__* sb; TYPE_1__* dev; int /*<<< orphan*/  writer_wq; int /*<<< orphan*/  may_write_bitmap; TYPE_3__ endio_wait; int /*<<< orphan*/  wait_wq; int /*<<< orphan*/ * journal_tree; scalar_t__ free_sectors; scalar_t__ internal_hash; } ;
struct completion {int dummy; } ;
struct bitmap_block_status {int /*<<< orphan*/  work; int /*<<< orphan*/  bio_queue_lock; int /*<<< orphan*/  bio_queue; } ;
struct bio {int /*<<< orphan*/  bi_status; TYPE_2__ bi_iter; int /*<<< orphan*/  bi_end_io; int /*<<< orphan*/  bi_opf; int /*<<< orphan*/ * bi_integrity; int /*<<< orphan*/  bi_partno; int /*<<< orphan*/  bi_disk; } ;
typedef  scalar_t__ sector_t ;
typedef  scalar_t__ atomic_t ;
struct TYPE_11__ {scalar_t__ log2_sectors_per_block; int flags; int /*<<< orphan*/  recalc_sector; } ;
struct TYPE_8__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  BITMAP_OP_TEST_ALL_CLEAR ; 
 int /*<<< orphan*/  BITMAP_OP_TEST_ALL_SET ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 unsigned int NOT_FOUND ; 
 int /*<<< orphan*/  REQ_INTEGRITY ; 
 int /*<<< orphan*/  SB_FLAG_RECALCULATING ; 
 int SECTOR_SHIFT ; 
 int FUNC3 (struct dm_integrity_io*,struct bio*,unsigned int,unsigned int) ; 
 struct journal_entry* FUNC4 (struct dm_integrity_c*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_integrity_c*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_integrity_c*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct bio*) ; 
 unsigned int FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dm_integrity_c*,int /*<<< orphan*/ ,scalar_t__,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct dm_integrity_io*) ; 
 struct bio* FUNC14 (struct dm_integrity_io*,int) ; 
 int FUNC15 (struct dm_integrity_c*) ; 
 int /*<<< orphan*/  FUNC16 (struct dm_integrity_c*,struct bio*) ; 
 int /*<<< orphan*/  FUNC17 (struct dm_integrity_c*,struct dm_integrity_io*) ; 
 unsigned int FUNC18 (struct dm_integrity_c*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC19 (struct bio*) ; 
 int /*<<< orphan*/  FUNC20 (struct completion*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  integrity_end_io ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct journal_entry*) ; 
 int /*<<< orphan*/  FUNC24 (struct journal_entry*) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC26 (int) ; 
 unsigned int FUNC27 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (struct dm_integrity_c*,TYPE_5__*) ; 
 struct bitmap_block_status* FUNC30 (struct dm_integrity_c*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC31 (struct dm_integrity_c*) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC36 (struct dm_integrity_c*,unsigned int,scalar_t__) ; 
 scalar_t__ FUNC37 (int) ; 
 int /*<<< orphan*/  FUNC38 (struct dm_integrity_c*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC39 (struct completion*) ; 
 int /*<<< orphan*/  FUNC40 (struct dm_integrity_c*,unsigned int*) ; 

__attribute__((used)) static void FUNC41(struct dm_integrity_io *dio, bool from_map)
{
	struct dm_integrity_c *ic = dio->ic;
	struct bio *bio = FUNC14(dio, sizeof(struct dm_integrity_io));
	unsigned journal_section, journal_entry;
	unsigned journal_read_pos;
	struct completion read_comp;
	bool need_sync_io = ic->internal_hash && !dio->write;

	if (need_sync_io && from_map) {
		FUNC2(&dio->work, integrity_bio_wait);
		FUNC28(ic->metadata_wq, &dio->work);
		return;
	}

lock_retry:
	FUNC33(&ic->endio_wait.lock);
retry:
	if (FUNC37(FUNC15(ic))) {
		FUNC35(&ic->endio_wait.lock);
		FUNC16(ic, bio);
		return;
	}
	dio->range.n_sectors = FUNC9(bio);
	journal_read_pos = NOT_FOUND;
	if (FUNC26(ic->mode == 'J')) {
		if (dio->write) {
			unsigned next_entry, i, pos;
			unsigned ws, we, range_sectors;

			dio->range.n_sectors = FUNC27(dio->range.n_sectors,
						   (sector_t)ic->free_sectors << ic->sb->log2_sectors_per_block);
			if (FUNC37(!dio->range.n_sectors)) {
				if (from_map)
					goto offload_to_thread;
				FUNC31(ic);
				goto retry;
			}
			range_sectors = dio->range.n_sectors >> ic->sb->log2_sectors_per_block;
			ic->free_sectors -= range_sectors;
			journal_section = ic->free_section;
			journal_entry = ic->free_section_entry;

			next_entry = ic->free_section_entry + range_sectors;
			ic->free_section_entry = next_entry % ic->journal_section_entries;
			ic->free_section += next_entry / ic->journal_section_entries;
			ic->n_uncommitted_sections += next_entry / ic->journal_section_entries;
			FUNC40(ic, &ic->free_section);

			pos = journal_section * ic->journal_section_entries + journal_entry;
			ws = journal_section;
			we = journal_entry;
			i = 0;
			do {
				struct journal_entry *je;

				FUNC5(ic, &ic->journal_tree[pos], dio->range.logical_sector + i);
				pos++;
				if (FUNC37(pos >= ic->journal_entries))
					pos = 0;

				je = FUNC4(ic, ws, we);
				FUNC1(!FUNC23(je));
				FUNC24(je);
				we++;
				if (FUNC37(we == ic->journal_section_entries)) {
					we = 0;
					ws++;
					FUNC40(ic, &ws);
				}
			} while ((i += ic->sectors_per_block) < dio->range.n_sectors);

			FUNC35(&ic->endio_wait.lock);
			goto journal_read_write;
		} else {
			sector_t next_sector;
			journal_read_pos = FUNC18(ic, dio->range.logical_sector, &next_sector);
			if (FUNC26(journal_read_pos == NOT_FOUND)) {
				if (FUNC37(dio->range.n_sectors > next_sector - dio->range.logical_sector))
					dio->range.n_sectors = next_sector - dio->range.logical_sector;
			} else {
				unsigned i;
				unsigned jp = journal_read_pos + 1;
				for (i = ic->sectors_per_block; i < dio->range.n_sectors; i += ic->sectors_per_block, jp++) {
					if (!FUNC36(ic, jp, dio->range.logical_sector + i))
						break;
				}
				dio->range.n_sectors = i;
			}
		}
	}
	if (FUNC37(!FUNC6(ic, &dio->range, true))) {
		/*
		 * We must not sleep in the request routine because it could
		 * stall bios on current->bio_list.
		 * So, we offload the bio to a workqueue if we have to sleep.
		 */
		if (from_map) {
offload_to_thread:
			FUNC35(&ic->endio_wait.lock);
			FUNC2(&dio->work, integrity_bio_wait);
			FUNC28(ic->wait_wq, &dio->work);
			return;
		}
		if (journal_read_pos != NOT_FOUND)
			dio->range.n_sectors = ic->sectors_per_block;
		FUNC38(ic, &dio->range);
		/*
		 * wait_and_add_new_range drops the spinlock, so the journal
		 * may have been changed arbitrarily. We need to recheck.
		 * To simplify the code, we restrict I/O size to just one block.
		 */
		if (journal_read_pos != NOT_FOUND) {
			sector_t next_sector;
			unsigned new_pos = FUNC18(ic, dio->range.logical_sector, &next_sector);
			if (FUNC37(new_pos != journal_read_pos)) {
				FUNC29(ic, &dio->range);
				goto retry;
			}
		}
	}
	FUNC35(&ic->endio_wait.lock);

	if (FUNC37(journal_read_pos != NOT_FOUND)) {
		journal_section = journal_read_pos / ic->journal_section_entries;
		journal_entry = journal_read_pos % ic->journal_section_entries;
		goto journal_read_write;
	}

	if (ic->mode == 'B' && dio->write) {
		if (!FUNC11(ic, ic->may_write_bitmap, dio->range.logical_sector,
				     dio->range.n_sectors, BITMAP_OP_TEST_ALL_SET)) {
			struct bitmap_block_status *bbs;

			bbs = FUNC30(ic, dio->range.logical_sector);
			FUNC32(&bbs->bio_queue_lock);
			FUNC8(&bbs->bio_queue, bio);
			FUNC34(&bbs->bio_queue_lock);
			FUNC28(ic->writer_wq, &bbs->work);
			return;
		}
	}

	dio->in_flight = (atomic_t)FUNC0(2);

	if (need_sync_io) {
		FUNC20(&read_comp);
		dio->completion = &read_comp;
	} else
		dio->completion = NULL;

	dio->orig_bi_iter = bio->bi_iter;

	dio->orig_bi_disk = bio->bi_disk;
	dio->orig_bi_partno = bio->bi_partno;
	FUNC10(bio, ic->dev->bdev);

	dio->orig_bi_integrity = FUNC7(bio);
	bio->bi_integrity = NULL;
	bio->bi_opf &= ~REQ_INTEGRITY;

	dio->orig_bi_end_io = bio->bi_end_io;
	bio->bi_end_io = integrity_end_io;

	bio->bi_iter.bi_size = dio->range.n_sectors << SECTOR_SHIFT;
	FUNC19(bio);

	if (need_sync_io) {
		FUNC39(&read_comp);
		if (ic->sb->flags & FUNC12(SB_FLAG_RECALCULATING) &&
		    dio->range.logical_sector + dio->range.n_sectors > FUNC25(ic->sb->recalc_sector))
			goto skip_check;
		if (ic->mode == 'B') {
			if (!FUNC11(ic, ic->recalc_bitmap, dio->range.logical_sector,
					     dio->range.n_sectors, BITMAP_OP_TEST_ALL_CLEAR))
				goto skip_check;
		}

		if (FUNC26(!bio->bi_status))
			FUNC22(&dio->work);
		else
skip_check:
			FUNC13(dio);

	} else {
		FUNC2(&dio->work, integrity_metadata);
		FUNC28(ic->metadata_wq, &dio->work);
	}

	return;

journal_read_write:
	if (FUNC37(FUNC3(dio, bio, journal_section, journal_entry)))
		goto lock_retry;

	FUNC17(ic, dio);
}