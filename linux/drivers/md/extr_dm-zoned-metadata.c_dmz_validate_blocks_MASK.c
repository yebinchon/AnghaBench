#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct dmz_metadata {TYPE_1__* dev; } ;
struct dmz_mblock {scalar_t__ data; } ;
struct dm_zone {unsigned int weight; } ;
typedef  unsigned int sector_t ;
struct TYPE_3__ {unsigned int zone_nr_blocks; } ;

/* Variables and functions */
 unsigned int DMZ_BLOCK_MASK_BITS ; 
 scalar_t__ DMZ_BLOCK_SIZE_BITS ; 
 scalar_t__ FUNC0 (struct dmz_mblock*) ; 
 int FUNC1 (struct dmz_mblock*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,unsigned long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct dmz_metadata*,struct dmz_mblock*) ; 
 struct dmz_mblock* FUNC6 (struct dmz_metadata*,struct dm_zone*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC8 (struct dmz_metadata*,struct dmz_mblock*) ; 
 unsigned int FUNC9 (unsigned long*,unsigned int,unsigned int) ; 
 scalar_t__ FUNC10 (int) ; 
 unsigned int FUNC11 (unsigned int,scalar_t__) ; 

int FUNC12(struct dmz_metadata *zmd, struct dm_zone *zone,
			sector_t chunk_block, unsigned int nr_blocks)
{
	unsigned int count, bit, nr_bits;
	unsigned int zone_nr_blocks = zmd->dev->zone_nr_blocks;
	struct dmz_mblock *mblk;
	unsigned int n = 0;

	FUNC3(zmd->dev, "=> VALIDATE zone %u, block %llu, %u blocks",
		      FUNC7(zmd, zone), (unsigned long long)chunk_block,
		      nr_blocks);

	FUNC2(chunk_block + nr_blocks > zone_nr_blocks);

	while (nr_blocks) {
		/* Get bitmap block */
		mblk = FUNC6(zmd, zone, chunk_block);
		if (FUNC0(mblk))
			return FUNC1(mblk);

		/* Set bits */
		bit = chunk_block & DMZ_BLOCK_MASK_BITS;
		nr_bits = FUNC11(nr_blocks, DMZ_BLOCK_SIZE_BITS - bit);

		count = FUNC9((unsigned long *)mblk->data, bit, nr_bits);
		if (count) {
			FUNC5(zmd, mblk);
			n += count;
		}
		FUNC8(zmd, mblk);

		nr_blocks -= nr_bits;
		chunk_block += nr_bits;
	}

	if (FUNC10(zone->weight + n <= zone_nr_blocks))
		zone->weight += n;
	else {
		FUNC4(zmd->dev, "Zone %u: weight %u should be <= %u",
			     FUNC7(zmd, zone), zone->weight,
			     zone_nr_blocks - n);
		zone->weight = zone_nr_blocks;
	}

	return 0;
}