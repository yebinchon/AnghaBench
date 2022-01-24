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
struct dmz_metadata {int /*<<< orphan*/  map_rnd_list; int /*<<< orphan*/  map_seq_list; } ;
struct dm_zone {int /*<<< orphan*/  link; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dmz_metadata *zmd, struct dm_zone *zone)
{
	if (FUNC3(&zone->link))
		return;

	FUNC2(&zone->link);
	if (FUNC0(zone)) {
		/* LRU rotate sequential zone */
		FUNC1(&zone->link, &zmd->map_seq_list);
	} else {
		/* LRU rotate random zone */
		FUNC1(&zone->link, &zmd->map_rnd_list);
	}
}