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
struct dm_clone_metadata {int /*<<< orphan*/  metadata_space_map_root; int /*<<< orphan*/  sm; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int FUNC2(struct dm_clone_metadata *cmd)
{
	int r;
	size_t root_size;

	r = FUNC1(cmd->sm, &root_size);
	if (r)
		return r;

	return FUNC0(cmd->sm, &cmd->metadata_space_map_root, root_size);
}