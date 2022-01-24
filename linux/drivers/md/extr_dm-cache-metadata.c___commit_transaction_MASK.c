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
struct TYPE_2__ {int /*<<< orphan*/  write_misses; int /*<<< orphan*/  write_hits; int /*<<< orphan*/  read_misses; int /*<<< orphan*/  read_hits; } ;
struct dm_cache_metadata {int /*<<< orphan*/  tm; TYPE_1__ stats; int /*<<< orphan*/  policy_hint_size; int /*<<< orphan*/ * policy_version; int /*<<< orphan*/  policy_name; int /*<<< orphan*/  cache_blocks; int /*<<< orphan*/  discard_nr_blocks; int /*<<< orphan*/  discard_block_size; int /*<<< orphan*/  discard_root; int /*<<< orphan*/  hint_root; int /*<<< orphan*/  dirty_root; int /*<<< orphan*/  root; int /*<<< orphan*/  flags; int /*<<< orphan*/  discard_info; int /*<<< orphan*/  dirty_info; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {void* write_misses; void* write_hits; void* read_misses; void* read_hits; void* policy_hint_size; void** policy_version; int /*<<< orphan*/  policy_name; void* cache_blocks; void* discard_nr_blocks; void* discard_block_size; void* discard_root; void* hint_root; void* dirty_root; void* mapping_root; void* flags; } ;
typedef  int /*<<< orphan*/  flags_mutator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*,struct cache_disk_superblock*) ; 
 int FUNC2 (struct dm_cache_metadata*) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cache_disk_superblock* FUNC6 (struct dm_block*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC13 (struct dm_cache_metadata*,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC14 (struct cache_disk_superblock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct dm_cache_metadata *cmd,
				flags_mutator mutator)
{
	int r;
	struct cache_disk_superblock *disk_super;
	struct dm_block *sblock;

	/*
	 * We need to know if the cache_disk_superblock exceeds a 512-byte sector.
	 */
	FUNC0(sizeof(struct cache_disk_superblock) > 512);

	if (FUNC11(cmd)) {
		r = FUNC5(&cmd->dirty_info, cmd->dirty_root,
				    &cmd->dirty_root);
		if (r)
			return r;
	}

	r = FUNC5(&cmd->discard_info, cmd->discard_root,
			    &cmd->discard_root);
	if (r)
		return r;

	r = FUNC8(cmd->tm);
	if (r < 0)
		return r;

	r = FUNC2(cmd);
	if (r)
		return r;

	r = FUNC13(cmd, &sblock);
	if (r)
		return r;

	disk_super = FUNC6(sblock);

	disk_super->flags = FUNC3(cmd->flags);
	if (mutator)
		FUNC14(disk_super, mutator);

	disk_super->mapping_root = FUNC4(cmd->root);
	if (FUNC11(cmd))
		disk_super->dirty_root = FUNC4(cmd->dirty_root);
	disk_super->hint_root = FUNC4(cmd->hint_root);
	disk_super->discard_root = FUNC4(cmd->discard_root);
	disk_super->discard_block_size = FUNC4(cmd->discard_block_size);
	disk_super->discard_nr_blocks = FUNC4(FUNC10(cmd->discard_nr_blocks));
	disk_super->cache_blocks = FUNC3(FUNC9(cmd->cache_blocks));
	FUNC12(disk_super->policy_name, cmd->policy_name, sizeof(disk_super->policy_name));
	disk_super->policy_version[0] = FUNC3(cmd->policy_version[0]);
	disk_super->policy_version[1] = FUNC3(cmd->policy_version[1]);
	disk_super->policy_version[2] = FUNC3(cmd->policy_version[2]);
	disk_super->policy_hint_size = FUNC3(cmd->policy_hint_size);

	disk_super->read_hits = FUNC3(cmd->stats.read_hits);
	disk_super->read_misses = FUNC3(cmd->stats.read_misses);
	disk_super->write_hits = FUNC3(cmd->stats.write_hits);
	disk_super->write_misses = FUNC3(cmd->stats.write_misses);
	FUNC1(cmd, disk_super);

	return FUNC7(cmd->tm, sblock);
}