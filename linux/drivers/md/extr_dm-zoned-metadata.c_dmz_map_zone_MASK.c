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
struct dmz_metadata {int /*<<< orphan*/  map_seq_list; int /*<<< orphan*/  map_rnd_list; } ;
struct dm_zone {unsigned int chunk; int /*<<< orphan*/  link; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMZ_MAP_UNMAPPED ; 
 int /*<<< orphan*/  FUNC0 (struct dmz_metadata*,struct dm_zone*) ; 
 scalar_t__ FUNC1 (struct dm_zone*) ; 
 int /*<<< orphan*/  FUNC2 (struct dmz_metadata*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct dmz_metadata *zmd, struct dm_zone *dzone,
		  unsigned int chunk)
{
	/* Set the chunk mapping */
	FUNC2(zmd, chunk, FUNC0(zmd, dzone),
			      DMZ_MAP_UNMAPPED);
	dzone->chunk = chunk;
	if (FUNC1(dzone))
		FUNC3(&dzone->link, &zmd->map_rnd_list);
	else
		FUNC3(&dzone->link, &zmd->map_seq_list);
}