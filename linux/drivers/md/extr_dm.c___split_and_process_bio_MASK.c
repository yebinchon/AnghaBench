#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct mapped_device {TYPE_2__* queue; } ;
struct dm_table {int dummy; } ;
struct clone_info {TYPE_4__* io; scalar_t__ sector_count; struct bio* bio; } ;
struct TYPE_6__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int bi_opf; TYPE_1__ bi_iter; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;
struct TYPE_10__ {scalar_t__ bio_list; } ;
struct TYPE_9__ {struct bio* orig_bio; } ;
struct TYPE_8__ {int /*<<< orphan*/  part0; } ;
struct TYPE_7__ {int /*<<< orphan*/  bio_split; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int REQ_OP_WRITE ; 
 scalar_t__ REQ_OP_ZONE_RESET ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (struct clone_info*) ; 
 int FUNC2 (struct clone_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 scalar_t__ FUNC6 (struct bio*) ; 
 struct bio* FUNC7 (struct bio*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* current ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct bio*) ; 
 int /*<<< orphan*/  FUNC12 (struct clone_info*,struct mapped_device*,struct dm_table*,struct bio*) ; 
 size_t FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/ * sectors ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_qc_t FUNC17(struct mapped_device *md,
					struct dm_table *map, struct bio *bio)
{
	struct clone_info ci;
	blk_qc_t ret = BLK_QC_T_NONE;
	int error = 0;

	FUNC12(&ci, md, map, bio);

	if (bio->bi_opf & REQ_PREFLUSH) {
		struct bio flush_bio;

		/*
		 * Use an on-stack bio for this, it's safe since we don't
		 * need to reference it after submit. It's just used as
		 * the basis for the clone(s).
		 */
		FUNC4(&flush_bio, NULL, 0);
		flush_bio.bi_opf = REQ_OP_WRITE | REQ_PREFLUSH | REQ_SYNC;
		ci.bio = &flush_bio;
		ci.sector_count = 0;
		error = FUNC1(&ci);
		/* dec_pending submits any data associated with flush */
	} else if (FUNC5(bio) == REQ_OP_ZONE_RESET) {
		ci.bio = bio;
		ci.sector_count = 0;
		error = FUNC2(&ci);
	} else {
		ci.bio = bio;
		ci.sector_count = FUNC6(bio);
		while (ci.sector_count && !error) {
			error = FUNC2(&ci);
			if (current->bio_list && ci.sector_count && !error) {
				/*
				 * Remainder must be passed to generic_make_request()
				 * so that it gets handled *after* bios already submitted
				 * have been completely processed.
				 * We take a clone of the original to store in
				 * ci.io->orig_bio to be used by end_io_acct() and
				 * for dec_pending to use for completion handling.
				 */
				struct bio *b = FUNC7(bio, FUNC6(bio) - ci.sector_count,
							  GFP_NOIO, &md->queue->bio_split);
				ci.io->orig_bio = b;

				/*
				 * Adjust IO stats for each split, otherwise upon queue
				 * reentry there will be redundant IO accounting.
				 * NOTE: this is a stop-gap fix, a proper fix involves
				 * significant refactoring of DM core's bio splitting
				 * (by eliminating DM's splitting and just using bio_split)
				 */
				FUNC14();
				FUNC0(&FUNC9(md)->part0,
						   sectors[FUNC13(FUNC5(bio))], ci.sector_count);
				FUNC15();

				FUNC3(b, bio);
				FUNC16(md->queue, b, bio->bi_iter.bi_sector);
				ret = FUNC11(bio);
				break;
			}
		}
	}

	/* drop the extra reference count */
	FUNC8(ci.io, FUNC10(error));
	return ret;
}