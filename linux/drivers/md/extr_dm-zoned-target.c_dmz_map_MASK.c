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
typedef  int /*<<< orphan*/  u64 ;
struct dmz_target {struct dmz_dev* dev; int /*<<< orphan*/  flush_work; int /*<<< orphan*/  flush_wq; int /*<<< orphan*/  flush_lock; int /*<<< orphan*/  flush_list; } ;
struct dmz_dev {int zone_nr_sectors; int /*<<< orphan*/  bdev; } ;
struct dmz_bioctx {int /*<<< orphan*/  ref; struct bio* bio; int /*<<< orphan*/ * zone; struct dmz_target* target; } ;
struct dm_target {struct dmz_target* private; } ;
struct TYPE_2__ {unsigned int bi_sector; } ;
struct bio {TYPE_1__ bi_iter; } ;
typedef  unsigned int sector_t ;

/* Variables and functions */
 unsigned int DMZ_BLOCK_SECTORS_MASK ; 
 int DM_MAPIO_KILL ; 
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_REQUEUE ; 
 int DM_MAPIO_SUBMITTED ; 
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 unsigned int FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*,unsigned int) ; 
 struct dmz_bioctx* FUNC5 (struct bio*,int) ; 
 scalar_t__ FUNC6 (struct dmz_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct bio*) ; 
 scalar_t__ FUNC8 (struct bio*) ; 
 scalar_t__ FUNC9 (struct dmz_dev*,struct bio*) ; 
 scalar_t__ FUNC10 (struct dmz_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct dmz_dev*,char*,scalar_t__,unsigned long long,int,...) ; 
 int FUNC12 (struct dmz_target*,struct bio*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC17(struct dm_target *ti, struct bio *bio)
{
	struct dmz_target *dmz = ti->private;
	struct dmz_dev *dev = dmz->dev;
	struct dmz_bioctx *bioctx = FUNC5(bio, sizeof(struct dmz_bioctx));
	sector_t sector = bio->bi_iter.bi_sector;
	unsigned int nr_sectors = FUNC2(bio);
	sector_t chunk_sector;
	int ret;

	if (FUNC6(dmz->dev))
		return DM_MAPIO_KILL;

	FUNC11(dev, "BIO op %d sector %llu + %u => chunk %llu, block %llu, %u blocks",
		      FUNC1(bio), (unsigned long long)sector, nr_sectors,
		      (unsigned long long)FUNC9(dmz->dev, bio),
		      (unsigned long long)FUNC10(dmz->dev, FUNC7(bio)),
		      (unsigned int)FUNC8(bio));

	FUNC3(bio, dev->bdev);

	if (!nr_sectors && FUNC1(bio) != REQ_OP_WRITE)
		return DM_MAPIO_REMAPPED;

	/* The BIO should be block aligned */
	if ((nr_sectors & DMZ_BLOCK_SECTORS_MASK) || (sector & DMZ_BLOCK_SECTORS_MASK))
		return DM_MAPIO_KILL;

	/* Initialize the BIO context */
	bioctx->target = dmz;
	bioctx->zone = NULL;
	bioctx->bio = bio;
	FUNC14(&bioctx->ref, 1);

	/* Set the BIO pending in the flush list */
	if (!nr_sectors && FUNC1(bio) == REQ_OP_WRITE) {
		FUNC15(&dmz->flush_lock);
		FUNC0(&dmz->flush_list, bio);
		FUNC16(&dmz->flush_lock);
		FUNC13(dmz->flush_wq, &dmz->flush_work, 0);
		return DM_MAPIO_SUBMITTED;
	}

	/* Split zone BIOs to fit entirely into a zone */
	chunk_sector = sector & (dev->zone_nr_sectors - 1);
	if (chunk_sector + nr_sectors > dev->zone_nr_sectors)
		FUNC4(bio, dev->zone_nr_sectors - chunk_sector);

	/* Now ready to handle this BIO */
	ret = FUNC12(dmz, bio);
	if (ret) {
		FUNC11(dmz->dev,
			      "BIO op %d, can't process chunk %llu, err %i\n",
			      FUNC1(bio), (u64)FUNC9(dmz->dev, bio),
			      ret);
		return DM_MAPIO_REQUEUE;
	}

	return DM_MAPIO_SUBMITTED;
}