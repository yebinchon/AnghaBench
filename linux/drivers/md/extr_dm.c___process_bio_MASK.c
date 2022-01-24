#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mapped_device {int dummy; } ;
struct dm_target_io {int dummy; } ;
struct dm_target {int dummy; } ;
struct dm_table {int dummy; } ;
struct clone_info {int /*<<< orphan*/  io; scalar_t__ sector_count; struct bio* bio; } ;
struct bio {int bi_opf; } ;
typedef  int /*<<< orphan*/  blk_qc_t ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_QC_T_NONE ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int REQ_OP_WRITE ; 
 int REQ_PREFLUSH ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (struct clone_info*,struct dm_target_io*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct clone_info*,struct dm_target*,int*) ; 
 int FUNC2 (struct clone_info*) ; 
 struct dm_target_io* FUNC3 (struct clone_info*,struct dm_target*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct clone_info*,struct mapped_device*,struct dm_table*,struct bio*) ; 

__attribute__((used)) static blk_qc_t FUNC9(struct mapped_device *md, struct dm_table *map,
			      struct bio *bio, struct dm_target *ti)
{
	struct clone_info ci;
	blk_qc_t ret = BLK_QC_T_NONE;
	int error = 0;

	FUNC8(&ci, md, map, bio);

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
		error = FUNC2(&ci);
		/* dec_pending submits any data associated with flush */
	} else {
		struct dm_target_io *tio;

		ci.bio = bio;
		ci.sector_count = FUNC5(bio);
		if (FUNC1(&ci, ti, &error))
			goto out;

		tio = FUNC3(&ci, ti, 0, GFP_NOIO);
		ret = FUNC0(&ci, tio, NULL);
	}
out:
	/* drop the extra reference count */
	FUNC6(ci.io, FUNC7(error));
	return ret;
}