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
struct dm_cache_metadata {int /*<<< orphan*/  root; int /*<<< orphan*/  info; } ;

/* Variables and functions */
 int /*<<< orphan*/  __dump_mapping ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(struct dm_cache_metadata *cmd)
{
	return FUNC0(&cmd->info, cmd->root, __dump_mapping, NULL);
}