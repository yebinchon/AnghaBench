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
 unsigned long FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 

unsigned long FUNC1(struct dm_clone_metadata *cmd,
						   unsigned long start)
{
	return FUNC0(cmd->region_map, cmd->nr_regions, start);
}