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
struct dmz_metadata {int /*<<< orphan*/  reserved_seq_zones_list; } ;
struct dm_zone {int dummy; } ;

/* Variables and functions */
 struct dm_zone* FUNC0 (struct dmz_metadata*) ; 
 struct dm_zone* FUNC1 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (struct dmz_metadata*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

struct dm_zone *FUNC5(struct dmz_metadata *zmd)
{
	struct dm_zone *zone;

	/*
	 * Search for a zone candidate to reclaim: 2 cases are possible.
	 * (1) There is no free sequential zones. Then a random data zone
	 *     cannot be reclaimed. So choose a sequential zone to reclaim so
	 *     that afterward a random zone can be reclaimed.
	 * (2) At least one free sequential zone is available, then choose
	 *     the oldest random zone (data or buffer) that can be locked.
	 */
	FUNC2(zmd);
	if (FUNC4(&zmd->reserved_seq_zones_list))
		zone = FUNC1(zmd);
	else
		zone = FUNC0(zmd);
	FUNC3(zmd);

	return zone;
}