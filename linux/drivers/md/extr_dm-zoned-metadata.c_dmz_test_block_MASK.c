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
typedef  int sector_t ;
struct TYPE_2__ {int zone_nr_blocks; } ;

/* Variables and functions */
 int DMZ_BLOCK_MASK_BITS ; 
 scalar_t__ FUNC0 (struct dmz_mblock*) ; 
 int FUNC1 (struct dmz_mblock*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct dmz_mblock* FUNC3 (struct dmz_metadata*,struct dm_zone*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*,struct dmz_mblock*) ; 
 scalar_t__ FUNC5 (int,unsigned long*) ; 

__attribute__((used)) static int FUNC6(struct dmz_metadata *zmd, struct dm_zone *zone,
			  sector_t chunk_block)
{
	struct dmz_mblock *mblk;
	int ret;

	FUNC2(chunk_block >= zmd->dev->zone_nr_blocks);

	/* Get bitmap block */
	mblk = FUNC3(zmd, zone, chunk_block);
	if (FUNC0(mblk))
		return FUNC1(mblk);

	/* Get offset */
	ret = FUNC5(chunk_block & DMZ_BLOCK_MASK_BITS,
		       (unsigned long *) mblk->data) != 0;

	FUNC4(zmd, mblk);

	return ret;
}