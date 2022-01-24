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
struct dmz_metadata {scalar_t__ nr_reserved_seq; int /*<<< orphan*/  free_wq; int /*<<< orphan*/  unmap_nr_seq; int /*<<< orphan*/  unmap_seq_list; int /*<<< orphan*/  nr_reserved_seq_zones; int /*<<< orphan*/  reserved_seq_zones_list; int /*<<< orphan*/  unmap_nr_rnd; int /*<<< orphan*/  unmap_rnd_list; } ;
struct dm_zone {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct dm_zone*) ; 
 scalar_t__ FUNC3 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC4 (struct dmz_metadata*,struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct dmz_metadata *zmd, struct dm_zone *zone)
{
	/* If this is a sequential zone, reset it */
	if (FUNC3(zone))
		FUNC4(zmd, zone);

	/* Return the zone to its type unmap list */
	if (FUNC2(zone)) {
		FUNC5(&zone->link, &zmd->unmap_rnd_list);
		FUNC0(&zmd->unmap_nr_rnd);
	} else if (FUNC1(&zmd->nr_reserved_seq_zones) <
		   zmd->nr_reserved_seq) {
		FUNC5(&zone->link, &zmd->reserved_seq_zones_list);
		FUNC0(&zmd->nr_reserved_seq_zones);
	} else {
		FUNC5(&zone->link, &zmd->unmap_seq_list);
		FUNC0(&zmd->unmap_nr_seq);
	}

	FUNC6(&zmd->free_wq);
}