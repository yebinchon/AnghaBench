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
struct superblock_disk {int dummy; } ;
struct dm_clone_metadata {int hydration_done; int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  region_map; int /*<<< orphan*/  tm; int /*<<< orphan*/  bitset_root; int /*<<< orphan*/  bitset_info; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct dm_clone_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_clone_metadata*,struct superblock_disk*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct superblock_disk* FUNC5 (struct dm_block*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct dm_clone_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC9(struct dm_clone_metadata *cmd)
{
	int r;
	struct dm_block *sblock;
	struct superblock_disk *sb;

	/* Flush bitset cache */
	r = FUNC4(&cmd->bitset_info, cmd->bitset_root, &cmd->bitset_root);
	if (r) {
		FUNC0("dm_bitset_flush failed");
		return r;
	}

	/* Flush to disk all blocks, except the superblock */
	r = FUNC7(cmd->tm);
	if (r) {
		FUNC0("dm_tm_pre_commit failed");
		return r;
	}

	/* Save the space map root in cmd->metadata_space_map_root */
	r = FUNC1(cmd);
	if (r) {
		FUNC0("__copy_sm_root failed");
		return r;
	}

	/* Lock the superblock */
	r = FUNC8(cmd, &sblock);
	if (r) {
		FUNC0("Failed to write_lock superblock");
		return r;
	}

	/* Save the metadata in superblock */
	sb = FUNC5(sblock);
	FUNC2(cmd, sb);

	/* Unlock superblock and commit it to disk */
	r = FUNC6(cmd->tm, sblock);
	if (r) {
		FUNC0("Failed to commit superblock");
		return r;
	}

	/*
	 * FIXME: Find a more efficient way to check if the hydration is done.
	 */
	if (FUNC3(cmd->region_map, cmd->nr_regions))
		cmd->hydration_done = true;

	return 0;
}