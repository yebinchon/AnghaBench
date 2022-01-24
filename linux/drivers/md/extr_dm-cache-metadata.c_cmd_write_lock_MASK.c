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
struct dm_cache_metadata {int /*<<< orphan*/  root_lock; int /*<<< orphan*/  bm; scalar_t__ fail_io; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC3(struct dm_cache_metadata *cmd)
{
	FUNC1(&cmd->root_lock);
	if (cmd->fail_io || FUNC0(cmd->bm)) {
		FUNC2(&cmd->root_lock);
		return false;
	}
	return true;
}