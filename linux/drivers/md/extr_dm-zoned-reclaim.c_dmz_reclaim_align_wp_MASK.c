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
struct dmz_reclaim {TYPE_1__* dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {unsigned int wp_block; } ;
typedef  unsigned int sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,unsigned long long,unsigned long long,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*,struct dm_zone*) ; 
 scalar_t__ FUNC4 (struct dmz_metadata*,struct dm_zone*) ; 

__attribute__((used)) static int FUNC5(struct dmz_reclaim *zrc, struct dm_zone *zone,
				sector_t block)
{
	struct dmz_metadata *zmd = zrc->metadata;
	sector_t wp_block = zone->wp_block;
	unsigned int nr_blocks;
	int ret;

	if (wp_block == block)
		return 0;

	if (wp_block > block)
		return -EIO;

	/*
	 * Zeroout the space between the write
	 * pointer and the requested position.
	 */
	nr_blocks = block - wp_block;
	ret = FUNC0(zrc->dev->bdev,
				   FUNC4(zmd, zone) + FUNC1(wp_block),
				   FUNC1(nr_blocks), GFP_NOIO, 0);
	if (ret) {
		FUNC2(zrc->dev,
			    "Align zone %u wp %llu to %llu (wp+%u) blocks failed %d",
			    FUNC3(zmd, zone), (unsigned long long)wp_block,
			    (unsigned long long)block, nr_blocks, ret);
		return ret;
	}

	zone->wp_block = block;

	return 0;
}