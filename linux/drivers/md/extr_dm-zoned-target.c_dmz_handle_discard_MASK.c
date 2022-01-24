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
struct dmz_target {int /*<<< orphan*/  dev; struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {scalar_t__ wp_block; struct dm_zone* bzone; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int EROFS ; 
 scalar_t__ FUNC0 (struct bio*) ; 
 unsigned int FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct dmz_metadata*,struct dm_zone*) ; 
 int FUNC6 (struct dmz_metadata*,struct dm_zone*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC7 (struct dm_zone*) ; 
 scalar_t__ FUNC8 (struct dm_zone*) ; 

__attribute__((used)) static int FUNC9(struct dmz_target *dmz, struct dm_zone *zone,
			      struct bio *bio)
{
	struct dmz_metadata *zmd = dmz->metadata;
	sector_t block = FUNC0(bio);
	unsigned int nr_blocks = FUNC1(bio);
	sector_t chunk_block = FUNC3(dmz->dev, block);
	int ret = 0;

	/* For unmapped chunks, there is nothing to do */
	if (!zone)
		return 0;

	if (FUNC7(zone))
		return -EROFS;

	FUNC4(dmz->dev, "DISCARD chunk %llu -> zone %u, block %llu, %u blocks",
		      (unsigned long long)FUNC2(dmz->dev, bio),
		      FUNC5(zmd, zone),
		      (unsigned long long)chunk_block, nr_blocks);

	/*
	 * Invalidate blocks in the data zone and its
	 * buffer zone if one is mapped.
	 */
	if (FUNC8(zone) || chunk_block < zone->wp_block)
		ret = FUNC6(zmd, zone, chunk_block, nr_blocks);
	if (ret == 0 && zone->bzone)
		ret = FUNC6(zmd, zone->bzone,
					    chunk_block, nr_blocks);
	return ret;
}