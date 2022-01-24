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
struct dmz_metadata {TYPE_1__* dev; } ;
struct dm_zone {int /*<<< orphan*/  wp_block; int /*<<< orphan*/  flags; } ;
struct blk_zone {scalar_t__ cond; scalar_t__ start; scalar_t__ wp; } ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 scalar_t__ BLK_ZONE_COND_OFFLINE ; 
 scalar_t__ BLK_ZONE_COND_READONLY ; 
 int /*<<< orphan*/  DMZ_OFFLINE ; 
 int /*<<< orphan*/  DMZ_READ_ONLY ; 
 int EIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct blk_zone*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*,struct dm_zone*) ; 
 scalar_t__ FUNC4 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 unsigned int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct dmz_metadata *zmd, struct dm_zone *zone)
{
	unsigned int nr_blkz = 1;
	unsigned int noio_flag;
	struct blk_zone blkz;
	int ret;

	/*
	 * Get zone information from disk. Since blkdev_report_zones() uses
	 * GFP_KERNEL by default for memory allocations, set the per-task
	 * PF_MEMALLOC_NOIO flag so that all allocations are done as if
	 * GFP_NOIO was specified.
	 */
	noio_flag = FUNC8();
	ret = FUNC0(zmd->dev->bdev, FUNC6(zmd, zone),
				  &blkz, &nr_blkz);
	FUNC7(noio_flag);
	if (!nr_blkz)
		ret = -EIO;
	if (ret) {
		FUNC2(zmd->dev, "Get zone %u report failed",
			    FUNC3(zmd, zone));
		return ret;
	}

	FUNC1(DMZ_OFFLINE, &zone->flags);
	FUNC1(DMZ_READ_ONLY, &zone->flags);
	if (blkz.cond == BLK_ZONE_COND_OFFLINE)
		FUNC9(DMZ_OFFLINE, &zone->flags);
	else if (blkz.cond == BLK_ZONE_COND_READONLY)
		FUNC9(DMZ_READ_ONLY, &zone->flags);

	if (FUNC4(zone))
		zone->wp_block = FUNC5(blkz.wp - blkz.start);
	else
		zone->wp_block = 0;

	return 0;
}