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
struct dmz_target {int /*<<< orphan*/  metadata; int /*<<< orphan*/  dev; } ;
struct dm_zone {scalar_t__ wp_block; } ;
struct bio {int dummy; } ;
typedef  scalar_t__ sector_t ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 
 unsigned int FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned long long,char*,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 int FUNC5 (struct dmz_target*,struct dm_zone*,struct bio*,scalar_t__,unsigned int) ; 
 int FUNC6 (struct dmz_target*,struct dm_zone*,struct bio*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct dm_zone*) ; 
 scalar_t__ FUNC8 (struct dm_zone*) ; 

__attribute__((used)) static int FUNC9(struct dmz_target *dmz, struct dm_zone *zone,
			    struct bio *bio)
{
	sector_t chunk_block = FUNC3(dmz->dev, FUNC0(bio));
	unsigned int nr_blocks = FUNC1(bio);

	if (!zone)
		return -ENOSPC;

	FUNC4(dmz->dev, "WRITE chunk %llu -> %s zone %u, block %llu, %u blocks",
		      (unsigned long long)FUNC2(dmz->dev, bio),
		      (FUNC8(zone) ? "RND" : "SEQ"),
		      FUNC7(dmz->metadata, zone),
		      (unsigned long long)chunk_block, nr_blocks);

	if (FUNC8(zone) || chunk_block == zone->wp_block) {
		/*
		 * zone is a random zone or it is a sequential zone
		 * and the BIO is aligned to the zone write pointer:
		 * direct write the zone.
		 */
		return FUNC6(dmz, zone, bio, chunk_block, nr_blocks);
	}

	/*
	 * This is an unaligned write in a sequential zone:
	 * use buffered write.
	 */
	return FUNC5(dmz, zone, bio, chunk_block, nr_blocks);
}