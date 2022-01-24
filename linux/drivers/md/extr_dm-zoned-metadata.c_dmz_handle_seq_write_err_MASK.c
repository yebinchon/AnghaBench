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
struct dmz_metadata {int /*<<< orphan*/  dev; } ;
struct dm_zone {unsigned int wp_block; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*,struct dm_zone*,unsigned int,unsigned int) ; 
 int FUNC3 (struct dmz_metadata*,struct dm_zone*) ; 

__attribute__((used)) static int FUNC4(struct dmz_metadata *zmd,
				    struct dm_zone *zone)
{
	unsigned int wp = 0;
	int ret;

	wp = zone->wp_block;
	ret = FUNC3(zmd, zone);
	if (ret)
		return ret;

	FUNC0(zmd->dev, "Processing zone %u write error (zone wp %u/%u)",
		     FUNC1(zmd, zone), zone->wp_block, wp);

	if (zone->wp_block < wp) {
		FUNC2(zmd, zone, zone->wp_block,
				      wp - zone->wp_block);
	}

	return 0;
}