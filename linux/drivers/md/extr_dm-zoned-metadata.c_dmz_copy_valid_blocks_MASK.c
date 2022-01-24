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
struct dmz_mblock {int /*<<< orphan*/  data; } ;
struct dm_zone {int /*<<< orphan*/  weight; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ zone_nr_blocks; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_BLOCK_SIZE ; 
 scalar_t__ DMZ_BLOCK_SIZE_BITS ; 
 scalar_t__ FUNC0 (struct dmz_mblock*) ; 
 int FUNC1 (struct dmz_mblock*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*,struct dmz_mblock*) ; 
 struct dmz_mblock* FUNC3 (struct dmz_metadata*,struct dm_zone*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*,struct dmz_mblock*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC6(struct dmz_metadata *zmd, struct dm_zone *from_zone,
			  struct dm_zone *to_zone)
{
	struct dmz_mblock *from_mblk, *to_mblk;
	sector_t chunk_block = 0;

	/* Get the zones bitmap blocks */
	while (chunk_block < zmd->dev->zone_nr_blocks) {
		from_mblk = FUNC3(zmd, from_zone, chunk_block);
		if (FUNC0(from_mblk))
			return FUNC1(from_mblk);
		to_mblk = FUNC3(zmd, to_zone, chunk_block);
		if (FUNC0(to_mblk)) {
			FUNC4(zmd, from_mblk);
			return FUNC1(to_mblk);
		}

		FUNC5(to_mblk->data, from_mblk->data, DMZ_BLOCK_SIZE);
		FUNC2(zmd, to_mblk);

		FUNC4(zmd, to_mblk);
		FUNC4(zmd, from_mblk);

		chunk_block += DMZ_BLOCK_SIZE_BITS;
	}

	to_zone->weight = from_zone->weight;

	return 0;
}