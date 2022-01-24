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
struct superblock_disk {int /*<<< orphan*/  metadata_snap; int /*<<< orphan*/  era_array_root; int /*<<< orphan*/  writeset_tree_root; int /*<<< orphan*/  current_era; int /*<<< orphan*/  nr_blocks; int /*<<< orphan*/  data_block_size; int /*<<< orphan*/  metadata_space_map_root; } ;
struct era_metadata {int archived_writesets; void* metadata_snap; void* era_array_root; void* writeset_tree_root; void* current_era; void* nr_blocks; void* block_size; int /*<<< orphan*/  sm; int /*<<< orphan*/  tm; int /*<<< orphan*/  bm; } ;
struct dm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SUPERBLOCK_LOCATION ; 
 struct superblock_disk* FUNC1 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_block*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct era_metadata*) ; 
 int FUNC7 (struct era_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC8(struct era_metadata *md)
{
	int r;
	struct dm_block *sblock;
	struct superblock_disk *disk;

	r = FUNC7(md, &sblock);
	if (r) {
		FUNC0("couldn't read_lock superblock");
		return r;
	}

	disk = FUNC1(sblock);
	r = FUNC3(md->bm, SUPERBLOCK_LOCATION,
			       disk->metadata_space_map_root,
			       sizeof(disk->metadata_space_map_root),
			       &md->tm, &md->sm);
	if (r) {
		FUNC0("dm_tm_open_with_sm failed");
		goto bad;
	}

	FUNC6(md);

	md->block_size = FUNC4(disk->data_block_size);
	md->nr_blocks = FUNC4(disk->nr_blocks);
	md->current_era = FUNC4(disk->current_era);

	md->writeset_tree_root = FUNC5(disk->writeset_tree_root);
	md->era_array_root = FUNC5(disk->era_array_root);
	md->metadata_snap = FUNC5(disk->metadata_snap);
	md->archived_writesets = true;

	FUNC2(sblock);

	return 0;

bad:
	FUNC2(sblock);
	return r;
}