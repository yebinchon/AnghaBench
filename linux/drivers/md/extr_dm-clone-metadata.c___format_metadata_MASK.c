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
struct dm_clone_metadata {int /*<<< orphan*/  tm; int /*<<< orphan*/  sm; int /*<<< orphan*/  nr_regions; int /*<<< orphan*/  bitset_root; int /*<<< orphan*/  bitset_info; int /*<<< orphan*/  bm; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  SUPERBLOCK_LOCATION ; 
 int FUNC1 (struct dm_clone_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_clone_metadata*,struct superblock_disk*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 struct superblock_disk* FUNC5 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (struct dm_clone_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC13(struct dm_clone_metadata *cmd)
{
	int r;
	struct dm_block *sblock;
	struct superblock_disk *sb;

	r = FUNC9(cmd->bm, SUPERBLOCK_LOCATION, &cmd->tm, &cmd->sm);
	if (r) {
		FUNC0("Failed to create transaction manager");
		return r;
	}

	FUNC6(cmd->tm, &cmd->bitset_info);

	r = FUNC3(&cmd->bitset_info, &cmd->bitset_root);
	if (r) {
		FUNC0("Failed to create empty on-disk bitset");
		goto err_with_tm;
	}

	r = FUNC4(&cmd->bitset_info, cmd->bitset_root, 0,
			     cmd->nr_regions, false, &cmd->bitset_root);
	if (r) {
		FUNC0("Failed to resize on-disk bitset to %lu entries", cmd->nr_regions);
		goto err_with_tm;
	}

	/* Flush to disk all blocks, except the superblock */
	r = FUNC11(cmd->tm);
	if (r) {
		FUNC0("dm_tm_pre_commit failed");
		goto err_with_tm;
	}

	r = FUNC1(cmd);
	if (r) {
		FUNC0("__copy_sm_root failed");
		goto err_with_tm;
	}

	r = FUNC12(cmd, &sblock);
	if (r) {
		FUNC0("Failed to write_lock superblock");
		goto err_with_tm;
	}

	sb = FUNC5(sblock);
	FUNC2(cmd, sb);
	r = FUNC8(cmd->tm, sblock);
	if (r) {
		FUNC0("Failed to commit superblock");
		goto err_with_tm;
	}

	return 0;

err_with_tm:
	FUNC7(cmd->sm);
	FUNC10(cmd->tm);

	return r;
}