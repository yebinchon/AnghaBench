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
struct dm_zone {scalar_t__ wp_block; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int EROFS ; 
 scalar_t__ FUNC0 (struct dm_zone*) ; 
 int FUNC1 (struct dm_zone*) ; 
 struct dm_zone* FUNC2 (struct dmz_metadata*,struct dm_zone*) ; 
 int FUNC3 (struct dmz_metadata*,struct dm_zone*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC4 (struct dm_zone*) ; 
 int FUNC5 (struct dmz_target*,struct dm_zone*,struct bio*,scalar_t__,unsigned int) ; 
 int FUNC6 (struct dmz_metadata*,struct dm_zone*,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct dmz_target *dmz,
				     struct dm_zone *zone, struct bio *bio,
				     sector_t chunk_block,
				     unsigned int nr_blocks)
{
	struct dmz_metadata *zmd = dmz->metadata;
	struct dm_zone *bzone;
	int ret;

	/* Get the buffer zone. One will be allocated if needed */
	bzone = FUNC2(zmd, zone);
	if (FUNC0(bzone))
		return FUNC1(bzone);

	if (FUNC4(bzone))
		return -EROFS;

	/* Submit write */
	ret = FUNC5(dmz, bzone, bio, chunk_block, nr_blocks);
	if (ret)
		return ret;

	/*
	 * Validate the blocks in the buffer zone
	 * and invalidate in the data zone.
	 */
	ret = FUNC6(zmd, bzone, chunk_block, nr_blocks);
	if (ret == 0 && chunk_block < zone->wp_block)
		ret = FUNC3(zmd, zone, chunk_block, nr_blocks);

	return ret;
}