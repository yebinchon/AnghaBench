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
struct dm_cache_metadata {unsigned long data_block_size; int /*<<< orphan*/  clean_when_opened; int /*<<< orphan*/  discard_info; int /*<<< orphan*/  tm; int /*<<< orphan*/  dirty_info; int /*<<< orphan*/  metadata_sm; int /*<<< orphan*/  bm; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {int /*<<< orphan*/  flags; int /*<<< orphan*/  metadata_space_map_root; int /*<<< orphan*/  data_block_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_SUPERBLOCK_LOCATION ; 
 int /*<<< orphan*/  CLEAN_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (struct cache_disk_superblock*,struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_cache_metadata*) ; 
 struct cache_disk_superblock* FUNC3 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dm_cache_metadata*,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,unsigned long*) ; 

__attribute__((used)) static int FUNC10(struct dm_cache_metadata *cmd)
{
	int r;
	struct dm_block *sblock;
	struct cache_disk_superblock *disk_super;
	unsigned long sb_flags;

	r = FUNC8(cmd, &sblock);
	if (r < 0) {
		FUNC0("couldn't read lock superblock");
		return r;
	}

	disk_super = FUNC3(sblock);

	/* Verify the data block size hasn't changed */
	if (FUNC7(disk_super->data_block_size) != cmd->data_block_size) {
		FUNC0("changing the data block size (from %u to %llu) is not supported",
		      FUNC7(disk_super->data_block_size),
		      (unsigned long long)cmd->data_block_size);
		r = -EINVAL;
		goto bad;
	}

	r = FUNC1(disk_super, cmd);
	if (r < 0)
		goto bad;

	r = FUNC6(cmd->bm, CACHE_SUPERBLOCK_LOCATION,
			       disk_super->metadata_space_map_root,
			       sizeof(disk_super->metadata_space_map_root),
			       &cmd->tm, &cmd->metadata_sm);
	if (r < 0) {
		FUNC0("tm_open_with_sm failed");
		goto bad;
	}

	FUNC2(cmd);
	FUNC5(cmd->tm, &cmd->dirty_info);
	FUNC5(cmd->tm, &cmd->discard_info);
	sb_flags = FUNC7(disk_super->flags);
	cmd->clean_when_opened = FUNC9(CLEAN_SHUTDOWN, &sb_flags);
	FUNC4(sblock);

	return 0;

bad:
	FUNC4(sblock);
	return r;
}