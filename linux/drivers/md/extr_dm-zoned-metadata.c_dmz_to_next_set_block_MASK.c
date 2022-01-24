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
struct dmz_mblock {scalar_t__ data; } ;
struct dm_zone {int dummy; } ;
typedef  unsigned int sector_t ;
struct TYPE_2__ {unsigned int zone_nr_blocks; } ;

/* Variables and functions */
 unsigned int DMZ_BLOCK_MASK_BITS ; 
 unsigned int DMZ_BLOCK_SIZE_BITS ; 
 scalar_t__ FUNC0 (struct dmz_mblock*) ; 
 int FUNC1 (struct dmz_mblock*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct dmz_mblock* FUNC3 (struct dmz_metadata*,struct dm_zone*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*,struct dmz_mblock*) ; 
 unsigned int FUNC5 (unsigned long*,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (unsigned long*,unsigned int,unsigned int) ; 
 unsigned int FUNC7 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC8(struct dmz_metadata *zmd, struct dm_zone *zone,
				 sector_t chunk_block, unsigned int nr_blocks,
				 int set)
{
	struct dmz_mblock *mblk;
	unsigned int bit, set_bit, nr_bits;
	unsigned long *bitmap;
	int n = 0;

	FUNC2(chunk_block + nr_blocks > zmd->dev->zone_nr_blocks);

	while (nr_blocks) {
		/* Get bitmap block */
		mblk = FUNC3(zmd, zone, chunk_block);
		if (FUNC0(mblk))
			return FUNC1(mblk);

		/* Get offset */
		bitmap = (unsigned long *) mblk->data;
		bit = chunk_block & DMZ_BLOCK_MASK_BITS;
		nr_bits = FUNC7(nr_blocks, DMZ_BLOCK_SIZE_BITS - bit);
		if (set)
			set_bit = FUNC5(bitmap, DMZ_BLOCK_SIZE_BITS, bit);
		else
			set_bit = FUNC6(bitmap, DMZ_BLOCK_SIZE_BITS, bit);
		FUNC4(zmd, mblk);

		n += set_bit - bit;
		if (set_bit < DMZ_BLOCK_SIZE_BITS)
			break;

		nr_blocks -= nr_bits;
		chunk_block += nr_bits;
	}

	return n;
}