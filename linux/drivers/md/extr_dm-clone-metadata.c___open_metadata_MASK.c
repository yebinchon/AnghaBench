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
struct superblock_disk {int /*<<< orphan*/  bitset_root; int /*<<< orphan*/  metadata_space_map_root; int /*<<< orphan*/  target_size; int /*<<< orphan*/  region_size; } ;
struct dm_clone_metadata {scalar_t__ region_size; scalar_t__ target_size; scalar_t__ bitset_root; int /*<<< orphan*/  bitset_info; int /*<<< orphan*/  tm; int /*<<< orphan*/  sm; int /*<<< orphan*/  bm; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  SUPERBLOCK_LOCATION ; 
 struct superblock_disk* FUNC1 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct dm_clone_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC7(struct dm_clone_metadata *cmd)
{
	int r;
	struct dm_block *sblock;
	struct superblock_disk *sb;

	r = FUNC6(cmd, &sblock);

	if (r) {
		FUNC0("Failed to read_lock superblock");
		return r;
	}

	sb = FUNC1(sblock);

	/* Verify that target_size and region_size haven't changed. */
	if (cmd->region_size != FUNC5(sb->region_size) ||
	    cmd->target_size != FUNC5(sb->target_size)) {
		FUNC0("Region and/or target size don't match the ones in metadata");
		r = -EINVAL;
		goto out_with_lock;
	}

	r = FUNC4(cmd->bm, SUPERBLOCK_LOCATION,
			       sb->metadata_space_map_root,
			       sizeof(sb->metadata_space_map_root),
			       &cmd->tm, &cmd->sm);

	if (r) {
		FUNC0("dm_tm_open_with_sm failed");
		goto out_with_lock;
	}

	FUNC3(cmd->tm, &cmd->bitset_info);
	cmd->bitset_root = FUNC5(sb->bitset_root);

out_with_lock:
	FUNC2(sblock);

	return r;
}