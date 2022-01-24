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
struct dm_zone {int dummy; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {scalar_t__ zone_nr_blocks; } ;

/* Variables and functions */
 int FUNC0 (struct dmz_metadata*,struct dm_zone*,scalar_t__) ; 
 int FUNC1 (struct dmz_metadata*,struct dm_zone*,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC2(struct dmz_metadata *zmd, struct dm_zone *zone,
		    sector_t chunk_block)
{
	int valid;

	valid = FUNC0(zmd, zone, chunk_block);
	if (valid <= 0)
		return valid;

	/* The block is valid: get the number of valid blocks from block */
	return FUNC1(zmd, zone, chunk_block,
				     zmd->dev->zone_nr_blocks - chunk_block, 0);
}