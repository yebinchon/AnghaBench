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
struct dmz_metadata {size_t mblk_primary; TYPE_3__* dev; int /*<<< orphan*/  mblk_lock; TYPE_1__* sb; } ;
struct dmz_mblock {int /*<<< orphan*/  page; int /*<<< orphan*/  state; int /*<<< orphan*/  ref; } ;
struct TYPE_5__ {int /*<<< orphan*/  bi_sector; } ;
struct bio {int /*<<< orphan*/  bi_end_io; struct dmz_mblock* bi_private; TYPE_2__ bi_iter; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_6__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_4__ {scalar_t__ block; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_BLOCK_SIZE ; 
 int /*<<< orphan*/  DMZ_META_READING ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct dmz_mblock* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_READ ; 
 int REQ_PRIO ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bio* FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bio*,int /*<<< orphan*/ ,int) ; 
 struct dmz_mblock* FUNC6 (struct dmz_metadata*,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct dmz_metadata*,struct dmz_mblock*) ; 
 struct dmz_mblock* FUNC10 (struct dmz_metadata*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct dmz_metadata*,struct dmz_mblock*) ; 
 int /*<<< orphan*/  dmz_mblock_bio_end_io ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct bio*) ; 

__attribute__((used)) static struct dmz_mblock *FUNC16(struct dmz_metadata *zmd,
					      sector_t mblk_no)
{
	struct dmz_mblock *mblk, *m;
	sector_t block = zmd->sb[zmd->mblk_primary].block + mblk_no;
	struct bio *bio;

	if (FUNC7(zmd->dev))
		return FUNC0(-EIO);

	/* Get a new block and a BIO to read it */
	mblk = FUNC6(zmd, mblk_no);
	if (!mblk)
		return FUNC0(-ENOMEM);

	bio = FUNC2(GFP_NOIO, 1);
	if (!bio) {
		FUNC9(zmd, mblk);
		return FUNC0(-ENOMEM);
	}

	FUNC13(&zmd->mblk_lock);

	/*
	 * Make sure that another context did not start reading
	 * the block already.
	 */
	m = FUNC10(zmd, mblk_no);
	if (m) {
		FUNC14(&zmd->mblk_lock);
		FUNC9(zmd, mblk);
		FUNC3(bio);
		return m;
	}

	mblk->ref++;
	FUNC12(DMZ_META_READING, &mblk->state);
	FUNC11(zmd, mblk);

	FUNC14(&zmd->mblk_lock);

	/* Submit read BIO */
	bio->bi_iter.bi_sector = FUNC8(block);
	FUNC4(bio, zmd->dev->bdev);
	bio->bi_private = mblk;
	bio->bi_end_io = dmz_mblock_bio_end_io;
	FUNC5(bio, REQ_OP_READ, REQ_META | REQ_PRIO);
	FUNC1(bio, mblk->page, DMZ_BLOCK_SIZE, 0);
	FUNC15(bio);

	return mblk;
}