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
struct dmz_mblock {void* data; } ;
struct dm_zone {int weight; } ;
typedef  unsigned int sector_t ;
struct TYPE_2__ {unsigned int zone_nr_blocks; } ;

/* Variables and functions */
 unsigned int DMZ_BLOCK_MASK_BITS ; 
 scalar_t__ DMZ_BLOCK_SIZE_BITS ; 
 scalar_t__ FUNC0 (struct dmz_mblock*) ; 
 scalar_t__ FUNC1 (void*,unsigned int,unsigned int) ; 
 struct dmz_mblock* FUNC2 (struct dmz_metadata*,struct dm_zone*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*,struct dmz_mblock*) ; 
 unsigned int FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct dmz_metadata *zmd, struct dm_zone *zone)
{
	struct dmz_mblock *mblk;
	sector_t chunk_block = 0;
	unsigned int bit, nr_bits;
	unsigned int nr_blocks = zmd->dev->zone_nr_blocks;
	void *bitmap;
	int n = 0;

	while (nr_blocks) {
		/* Get bitmap block */
		mblk = FUNC2(zmd, zone, chunk_block);
		if (FUNC0(mblk)) {
			n = 0;
			break;
		}

		/* Count bits in this block */
		bitmap = mblk->data;
		bit = chunk_block & DMZ_BLOCK_MASK_BITS;
		nr_bits = FUNC4(nr_blocks, DMZ_BLOCK_SIZE_BITS - bit);
		n += FUNC1(bitmap, bit, nr_bits);

		FUNC3(zmd, mblk);

		nr_blocks -= nr_bits;
		chunk_block += nr_bits;
	}

	zone->weight = n;
}