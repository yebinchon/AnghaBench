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
struct dmz_target {struct dmz_metadata* metadata; } ;
struct dmz_metadata {int dummy; } ;
struct dm_zone {struct dm_zone* bzone; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 int EROFS ; 
 int FUNC0 (struct dmz_metadata*,struct dm_zone*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (struct dm_zone*) ; 
 int FUNC2 (struct dmz_target*,struct dm_zone*,struct bio*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC3 (struct dmz_metadata*,struct dm_zone*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct dmz_target *dmz,
				   struct dm_zone *zone, struct bio *bio,
				   sector_t chunk_block,
				   unsigned int nr_blocks)
{
	struct dmz_metadata *zmd = dmz->metadata;
	struct dm_zone *bzone = zone->bzone;
	int ret;

	if (FUNC1(zone))
		return -EROFS;

	/* Submit write */
	ret = FUNC2(dmz, zone, bio, chunk_block, nr_blocks);
	if (ret)
		return ret;

	/*
	 * Validate the blocks in the data zone and invalidate
	 * in the buffer zone, if there is one.
	 */
	ret = FUNC3(zmd, zone, chunk_block, nr_blocks);
	if (ret == 0 && bzone)
		ret = FUNC0(zmd, bzone, chunk_block, nr_blocks);

	return ret;
}