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
struct dmz_reclaim {unsigned long flags; int kc_err; int /*<<< orphan*/  kc; struct dmz_dev* dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dmz_dev {int zone_nr_blocks; int flags; int /*<<< orphan*/  bdev; } ;
struct dm_zone {int wp_block; } ;
struct dm_io_region {void* count; void* sector; int /*<<< orphan*/  bdev; } ;
typedef  int sector_t ;

/* Variables and functions */
 int DMZ_BDEV_DYING ; 
 int /*<<< orphan*/  DMZ_RECLAIM_KCOPY ; 
 int /*<<< orphan*/  DM_KCOPYD_WRITE_SEQ ; 
 int EIO ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct dm_io_region*,int,struct dm_io_region*,unsigned long,int /*<<< orphan*/ ,struct dmz_reclaim*) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (struct dmz_metadata*,struct dm_zone*,int*) ; 
 scalar_t__ FUNC3 (struct dm_zone*) ; 
 int FUNC4 (struct dmz_reclaim*,struct dm_zone*,int) ; 
 int /*<<< orphan*/  dmz_reclaim_kcopy_end ; 
 int FUNC5 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,unsigned long*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dmz_reclaim *zrc,
			    struct dm_zone *src_zone, struct dm_zone *dst_zone)
{
	struct dmz_metadata *zmd = zrc->metadata;
	struct dmz_dev *dev = zrc->dev;
	struct dm_io_region src, dst;
	sector_t block = 0, end_block;
	sector_t nr_blocks;
	sector_t src_zone_block;
	sector_t dst_zone_block;
	unsigned long flags = 0;
	int ret;

	if (FUNC3(src_zone))
		end_block = src_zone->wp_block;
	else
		end_block = dev->zone_nr_blocks;
	src_zone_block = FUNC5(zmd, src_zone);
	dst_zone_block = FUNC5(zmd, dst_zone);

	if (FUNC3(dst_zone))
		FUNC6(DM_KCOPYD_WRITE_SEQ, &flags);

	while (block < end_block) {
		if (dev->flags & DMZ_BDEV_DYING)
			return -EIO;

		/* Get a valid region from the source zone */
		ret = FUNC2(zmd, src_zone, &block);
		if (ret <= 0)
			return ret;
		nr_blocks = ret;

		/*
		 * If we are writing in a sequential zone, we must make sure
		 * that writes are sequential. So Zeroout any eventual hole
		 * between writes.
		 */
		if (FUNC3(dst_zone)) {
			ret = FUNC4(zrc, dst_zone, block);
			if (ret)
				return ret;
		}

		src.bdev = dev->bdev;
		src.sector = FUNC1(src_zone_block + block);
		src.count = FUNC1(nr_blocks);

		dst.bdev = dev->bdev;
		dst.sector = FUNC1(dst_zone_block + block);
		dst.count = src.count;

		/* Copy the valid region */
		FUNC6(DMZ_RECLAIM_KCOPY, &zrc->flags);
		FUNC0(zrc->kc, &src, 1, &dst, flags,
			       dmz_reclaim_kcopy_end, zrc);

		/* Wait for copy to complete */
		FUNC7(&zrc->flags, DMZ_RECLAIM_KCOPY,
			       TASK_UNINTERRUPTIBLE);
		if (zrc->kc_err)
			return zrc->kc_err;

		block += nr_blocks;
		if (FUNC3(dst_zone))
			dst_zone->wp_block = block;
	}

	return 0;
}