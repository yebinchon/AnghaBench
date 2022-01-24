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
struct dmz_metadata {int dummy; } ;
struct dm_zone {unsigned int chunk; int /*<<< orphan*/  link; TYPE_1__* bzone; int /*<<< orphan*/  flags; } ;
struct TYPE_3__ {int /*<<< orphan*/ * bzone; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_BUF ; 
 unsigned int DMZ_MAP_UNMAPPED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 unsigned int FUNC1 (struct dmz_metadata*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct dmz_metadata *zmd, struct dm_zone *zone)
{
	unsigned int chunk = zone->chunk;
	unsigned int dzone_id;

	if (chunk == DMZ_MAP_UNMAPPED) {
		/* Already unmapped */
		return;
	}

	if (FUNC4(DMZ_BUF, &zone->flags)) {
		/*
		 * Unmapping the chunk buffer zone: clear only
		 * the chunk buffer mapping
		 */
		dzone_id = FUNC1(zmd, zone->bzone);
		zone->bzone->bzone = NULL;
		zone->bzone = NULL;

	} else {
		/*
		 * Unmapping the chunk data zone: the zone must
		 * not be buffered.
		 */
		if (FUNC0(zone->bzone)) {
			zone->bzone->bzone = NULL;
			zone->bzone = NULL;
		}
		dzone_id = DMZ_MAP_UNMAPPED;
	}

	FUNC2(zmd, chunk, dzone_id, DMZ_MAP_UNMAPPED);

	zone->chunk = DMZ_MAP_UNMAPPED;
	FUNC3(&zone->link);
}