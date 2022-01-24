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
struct dm_cache_metadata {int /*<<< orphan*/  tm; int /*<<< orphan*/  dirty_root; int /*<<< orphan*/  data_block_size; int /*<<< orphan*/  discard_nr_blocks; int /*<<< orphan*/  discard_block_size; int /*<<< orphan*/  discard_root; int /*<<< orphan*/  hint_root; int /*<<< orphan*/  root; int /*<<< orphan*/  version; TYPE_1__* bdev; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {void* dirty_root; void* write_misses; void* write_hits; void* read_misses; void* read_hits; void* cache_blocks; void* data_block_size; void* metadata_block_size; void* discard_nr_blocks; void* discard_block_size; void* discard_root; void* hint_root; void* mapping_root; void* policy_hint_size; int /*<<< orphan*/  policy_version; int /*<<< orphan*/  policy_name; void* version; void* magic; int /*<<< orphan*/  uuid; scalar_t__ flags; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {int /*<<< orphan*/  bd_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SUPERBLOCK_MAGIC ; 
 int /*<<< orphan*/  DM_CACHE_METADATA_BLOCK_SIZE ; 
 scalar_t__ DM_CACHE_METADATA_MAX_SECTORS ; 
 scalar_t__ SECTOR_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct dm_cache_metadata*,struct cache_disk_superblock*) ; 
 int FUNC1 (struct dm_cache_metadata*) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 struct cache_disk_superblock* FUNC4 (struct dm_block*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC10 (struct dm_cache_metadata*) ; 
 int FUNC11 (struct dm_cache_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC12(struct dm_cache_metadata *cmd)
{
	int r;
	struct dm_block *sblock;
	struct cache_disk_superblock *disk_super;
	sector_t bdev_size = FUNC8(cmd->bdev->bd_inode) >> SECTOR_SHIFT;

	/* FIXME: see if we can lose the max sectors limit */
	if (bdev_size > DM_CACHE_METADATA_MAX_SECTORS)
		bdev_size = DM_CACHE_METADATA_MAX_SECTORS;

	r = FUNC6(cmd->tm);
	if (r < 0)
		return r;

	/*
	 * dm_sm_copy_root() can fail.  So we need to do it before we start
	 * updating the superblock.
	 */
	r = FUNC1(cmd);
	if (r)
		return r;

	r = FUNC11(cmd, &sblock);
	if (r)
		return r;

	disk_super = FUNC4(sblock);
	disk_super->flags = 0;
	FUNC9(disk_super->uuid, 0, sizeof(disk_super->uuid));
	disk_super->magic = FUNC3(CACHE_SUPERBLOCK_MAGIC);
	disk_super->version = FUNC2(cmd->version);
	FUNC9(disk_super->policy_name, 0, sizeof(disk_super->policy_name));
	FUNC9(disk_super->policy_version, 0, sizeof(disk_super->policy_version));
	disk_super->policy_hint_size = FUNC2(0);

	FUNC0(cmd, disk_super);

	disk_super->mapping_root = FUNC3(cmd->root);
	disk_super->hint_root = FUNC3(cmd->hint_root);
	disk_super->discard_root = FUNC3(cmd->discard_root);
	disk_super->discard_block_size = FUNC3(cmd->discard_block_size);
	disk_super->discard_nr_blocks = FUNC3(FUNC7(cmd->discard_nr_blocks));
	disk_super->metadata_block_size = FUNC2(DM_CACHE_METADATA_BLOCK_SIZE);
	disk_super->data_block_size = FUNC2(cmd->data_block_size);
	disk_super->cache_blocks = FUNC2(0);

	disk_super->read_hits = FUNC2(0);
	disk_super->read_misses = FUNC2(0);
	disk_super->write_hits = FUNC2(0);
	disk_super->write_misses = FUNC2(0);

	if (FUNC10(cmd))
		disk_super->dirty_root = FUNC3(cmd->dirty_root);

	return FUNC5(cmd->tm, sblock);
}