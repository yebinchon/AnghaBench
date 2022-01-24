#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {void* write_misses; void* write_hits; void* read_misses; void* read_hits; } ;
struct dm_cache_metadata {int changed; void* dirty_root; TYPE_1__ stats; void* policy_hint_size; void** policy_version; int /*<<< orphan*/  policy_name; int /*<<< orphan*/  cache_blocks; void* data_block_size; int /*<<< orphan*/  discard_nr_blocks; void* discard_block_size; void* discard_root; void* hint_root; void* root; void* flags; void* version; } ;
struct cache_disk_superblock {int /*<<< orphan*/  dirty_root; int /*<<< orphan*/  write_misses; int /*<<< orphan*/  write_hits; int /*<<< orphan*/  read_misses; int /*<<< orphan*/  read_hits; int /*<<< orphan*/  policy_hint_size; int /*<<< orphan*/ * policy_version; int /*<<< orphan*/  policy_name; int /*<<< orphan*/  cache_blocks; int /*<<< orphan*/  data_block_size; int /*<<< orphan*/  discard_nr_blocks; int /*<<< orphan*/  discard_block_size; int /*<<< orphan*/  discard_root; int /*<<< orphan*/  hint_root; int /*<<< orphan*/  mapping_root; int /*<<< orphan*/  flags; int /*<<< orphan*/  version; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 

__attribute__((used)) static void FUNC6(struct dm_cache_metadata *cmd,
				   struct cache_disk_superblock *disk_super)
{
	cmd->version = FUNC0(disk_super->version);
	cmd->flags = FUNC0(disk_super->flags);
	cmd->root = FUNC1(disk_super->mapping_root);
	cmd->hint_root = FUNC1(disk_super->hint_root);
	cmd->discard_root = FUNC1(disk_super->discard_root);
	cmd->discard_block_size = FUNC1(disk_super->discard_block_size);
	cmd->discard_nr_blocks = FUNC5(FUNC1(disk_super->discard_nr_blocks));
	cmd->data_block_size = FUNC0(disk_super->data_block_size);
	cmd->cache_blocks = FUNC4(FUNC0(disk_super->cache_blocks));
	FUNC3(cmd->policy_name, disk_super->policy_name, sizeof(cmd->policy_name));
	cmd->policy_version[0] = FUNC0(disk_super->policy_version[0]);
	cmd->policy_version[1] = FUNC0(disk_super->policy_version[1]);
	cmd->policy_version[2] = FUNC0(disk_super->policy_version[2]);
	cmd->policy_hint_size = FUNC0(disk_super->policy_hint_size);

	cmd->stats.read_hits = FUNC0(disk_super->read_hits);
	cmd->stats.read_misses = FUNC0(disk_super->read_misses);
	cmd->stats.write_hits = FUNC0(disk_super->write_hits);
	cmd->stats.write_misses = FUNC0(disk_super->write_misses);

	if (FUNC2(cmd))
		cmd->dirty_root = FUNC1(disk_super->dirty_root);

	cmd->changed = false;
}