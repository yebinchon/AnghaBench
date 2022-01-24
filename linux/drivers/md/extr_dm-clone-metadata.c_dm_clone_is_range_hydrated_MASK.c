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
struct dm_clone_metadata {int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  region_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_clone_metadata*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

bool FUNC2(struct dm_clone_metadata *cmd,
				unsigned long start, unsigned long nr_regions)
{
	unsigned long bit;

	if (FUNC0(cmd))
		return true;

	bit = FUNC1(cmd->region_map, cmd->nr_regions, start);

	return (bit >= (start + nr_regions));
}