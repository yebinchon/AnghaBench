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
typedef  int /*<<< orphan*/  u64 ;
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
 unsigned int FUNC3 (unsigned long*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct dmz_metadata*,struct dmz_mblock*) ; 
 struct dmz_mblock* FUNC7 (struct dmz_metadata*,struct dm_zone*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC9 (struct dmz_metadata*,struct dmz_mblock*) ; 
 unsigned int FUNC10 (unsigned int,scalar_t__) ; 

int FUNC11(struct dmz_metadata *zmd, struct dm_zone *zone,
			  sector_t chunk_block, unsigned int nr_blocks)
{
	unsigned int count, bit, nr_bits;
	struct dmz_mblock *mblk;
	unsigned int n = 0;

	FUNC4(zmd->dev, "=> INVALIDATE zone %u, block %llu, %u blocks",
		      FUNC8(zmd, zone), (u64)chunk_block, nr_blocks);

	FUNC2(chunk_block + nr_blocks > zmd->dev->zone_nr_blocks);

	while (nr_blocks) {
		/* Get bitmap block */
		mblk = FUNC7(zmd, zone, chunk_block);
		if (FUNC0(mblk))
			return FUNC1(mblk);

		/* Clear bits */
		bit = chunk_block & DMZ_BLOCK_MASK_BITS;
		nr_bits = FUNC10(nr_blocks, DMZ_BLOCK_SIZE_BITS - bit);

		count = FUNC3((unsigned long *)mblk->data,
				       bit, nr_bits);
		if (count) {
			FUNC6(zmd, mblk);
			n += count;
		}
		FUNC9(zmd, mblk);

		nr_blocks -= nr_bits;
		chunk_block += nr_bits;
	}

	if (zone->weight >= n)
		zone->weight -= n;
	else {
		FUNC5(zmd->dev, "Zone %u: weight %u should be >= %u",
			     FUNC8(zmd, zone), zone->weight, n);
		zone->weight = 0;
	}

	return 0;
}