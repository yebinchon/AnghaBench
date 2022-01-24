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
struct dmz_metadata {int zone_bitmap_size; int zone_nr_bitmap_blocks; struct dm_zone* zones; struct dmz_dev* dev; } ;
struct dmz_dev {int zone_nr_blocks; unsigned int nr_zones; scalar_t__ capacity; scalar_t__ zone_nr_sectors; int /*<<< orphan*/  bdev; } ;
struct dm_zone {int dummy; } ;
struct blk_zone {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int DMZ_BLOCK_SHIFT ; 
 unsigned int DMZ_REPORT_NR_ZONES ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,struct blk_zone*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_dev*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*) ; 
 int FUNC4 (struct dmz_metadata*,struct dm_zone*,struct blk_zone*) ; 
 void* FUNC5 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct blk_zone*) ; 

__attribute__((used)) static int FUNC7(struct dmz_metadata *zmd)
{
	struct dmz_dev *dev = zmd->dev;
	struct dm_zone *zone;
	struct blk_zone *blkz;
	unsigned int nr_blkz;
	sector_t sector = 0;
	int i, ret = 0;

	/* Init */
	zmd->zone_bitmap_size = dev->zone_nr_blocks >> 3;
	zmd->zone_nr_bitmap_blocks = zmd->zone_bitmap_size >> DMZ_BLOCK_SHIFT;

	/* Allocate zone array */
	zmd->zones = FUNC5(dev->nr_zones, sizeof(struct dm_zone), GFP_KERNEL);
	if (!zmd->zones)
		return -ENOMEM;

	FUNC2(dev, "Using %zu B for zone information",
		     sizeof(struct dm_zone) * dev->nr_zones);

	/* Get zone information */
	nr_blkz = DMZ_REPORT_NR_ZONES;
	blkz = FUNC5(nr_blkz, sizeof(struct blk_zone), GFP_KERNEL);
	if (!blkz) {
		ret = -ENOMEM;
		goto out;
	}

	/*
	 * Get zone information and initialize zone descriptors.
	 * At the same time, determine where the super block
	 * should be: first block of the first randomly writable
	 * zone.
	 */
	zone = zmd->zones;
	while (sector < dev->capacity) {
		/* Get zone information */
		nr_blkz = DMZ_REPORT_NR_ZONES;
		ret = FUNC0(dev->bdev, sector, blkz, &nr_blkz);
		if (ret) {
			FUNC1(dev, "Report zones failed %d", ret);
			goto out;
		}

		if (!nr_blkz)
			break;

		/* Process report */
		for (i = 0; i < nr_blkz; i++) {
			ret = FUNC4(zmd, zone, &blkz[i]);
			if (ret)
				goto out;
			sector += dev->zone_nr_sectors;
			zone++;
		}
	}

	/* The entire zone configuration of the disk should now be known */
	if (sector < dev->capacity) {
		FUNC1(dev, "Failed to get correct zone information");
		ret = -ENXIO;
	}
out:
	FUNC6(blkz);
	if (ret)
		FUNC3(zmd);

	return ret;
}