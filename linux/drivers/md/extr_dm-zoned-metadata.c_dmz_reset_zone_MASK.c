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
struct dmz_metadata {struct dmz_dev* dev; } ;
struct dmz_dev {int /*<<< orphan*/  zone_nr_sectors; int /*<<< orphan*/  bdev; } ;
struct dm_zone {scalar_t__ wp_block; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_SEQ_WRITE_ERR ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_dev*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_zone*) ; 
 scalar_t__ FUNC5 (struct dm_zone*) ; 
 scalar_t__ FUNC6 (struct dm_zone*) ; 
 scalar_t__ FUNC7 (struct dm_zone*) ; 
 scalar_t__ FUNC8 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC9 (struct dmz_metadata*,struct dm_zone*) ; 

__attribute__((used)) static int FUNC10(struct dmz_metadata *zmd, struct dm_zone *zone)
{
	int ret;

	/*
	 * Ignore offline zones, read only zones,
	 * and conventional zones.
	 */
	if (FUNC5(zone) ||
	    FUNC6(zone) ||
	    FUNC7(zone))
		return 0;

	if (!FUNC4(zone) || FUNC8(zone)) {
		struct dmz_dev *dev = zmd->dev;

		ret = FUNC0(dev->bdev,
					 FUNC9(zmd, zone),
					 dev->zone_nr_sectors, GFP_NOIO);
		if (ret) {
			FUNC2(dev, "Reset zone %u failed %d",
				    FUNC3(zmd, zone), ret);
			return ret;
		}
	}

	/* Clear write error bit and rewind write pointer position */
	FUNC1(DMZ_SEQ_WRITE_ERR, &zone->flags);
	zone->wp_block = 0;

	return 0;
}