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
struct dm_clone_metadata {int /*<<< orphan*/  region_map; int /*<<< orphan*/  fail_io; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_clone_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_clone_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_clone_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(struct dm_clone_metadata *cmd)
{
	if (!cmd->fail_io)
		FUNC0(cmd);

	FUNC1(cmd);
	FUNC3(cmd->region_map);
	FUNC2(cmd);
}