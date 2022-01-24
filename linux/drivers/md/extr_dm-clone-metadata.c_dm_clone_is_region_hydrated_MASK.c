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
struct dm_clone_metadata {int /*<<< orphan*/  region_map; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct dm_clone_metadata*) ; 
 scalar_t__ FUNC1 (unsigned long,int /*<<< orphan*/ ) ; 

bool FUNC2(struct dm_clone_metadata *cmd, unsigned long region_nr)
{
	return FUNC0(cmd) || FUNC1(region_nr, cmd->region_map);
}