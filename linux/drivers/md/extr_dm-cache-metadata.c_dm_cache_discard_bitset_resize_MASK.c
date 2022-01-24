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
struct dm_cache_metadata {int changed; int /*<<< orphan*/  discard_nr_blocks; int /*<<< orphan*/  discard_block_size; int /*<<< orphan*/  discard_root; int /*<<< orphan*/  discard_info; } ;
typedef  int /*<<< orphan*/  sector_t ;
typedef  int /*<<< orphan*/  dm_dblock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int FUNC4(struct dm_cache_metadata *cmd,
				   sector_t discard_block_size,
				   dm_dblock_t new_nr_entries)
{
	int r;

	FUNC0(cmd);
	r = FUNC2(&cmd->discard_info,
			     cmd->discard_root,
			     FUNC3(cmd->discard_nr_blocks),
			     FUNC3(new_nr_entries),
			     false, &cmd->discard_root);
	if (!r) {
		cmd->discard_block_size = discard_block_size;
		cmd->discard_nr_blocks = new_nr_entries;
	}

	cmd->changed = true;
	FUNC1(cmd);

	return r;
}