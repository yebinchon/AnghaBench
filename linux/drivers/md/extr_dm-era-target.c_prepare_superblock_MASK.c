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
struct superblock_disk {void* metadata_snap; void* era_array_root; void* writeset_tree_root; int /*<<< orphan*/  current_writeset; void* current_era; void* nr_blocks; void* metadata_block_size; void* data_block_size; void* version; int /*<<< orphan*/  uuid; void* flags; void* magic; } ;
struct era_metadata {unsigned long block_size; unsigned long nr_blocks; unsigned long current_era; int /*<<< orphan*/  metadata_snap; int /*<<< orphan*/  era_array_root; int /*<<< orphan*/  writeset_tree_root; TYPE_1__* current_writeset; } ;
struct TYPE_2__ {int /*<<< orphan*/  md; } ;

/* Variables and functions */
 unsigned long DM_ERA_METADATA_BLOCK_SIZE ; 
 unsigned long MAX_ERA_VERSION ; 
 unsigned long SECTOR_SHIFT ; 
 int /*<<< orphan*/  SUPERBLOCK_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (struct era_metadata*,struct superblock_disk*) ; 
 void* FUNC1 (unsigned long) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct era_metadata *md, struct superblock_disk *disk)
{
	disk->magic = FUNC2(SUPERBLOCK_MAGIC);
	disk->flags = FUNC1(0ul);

	/* FIXME: can't keep blanking the uuid (uuid is currently unused though) */
	FUNC3(disk->uuid, 0, sizeof(disk->uuid));
	disk->version = FUNC1(MAX_ERA_VERSION);

	FUNC0(md, disk);

	disk->data_block_size = FUNC1(md->block_size);
	disk->metadata_block_size = FUNC1(DM_ERA_METADATA_BLOCK_SIZE >> SECTOR_SHIFT);
	disk->nr_blocks = FUNC1(md->nr_blocks);
	disk->current_era = FUNC1(md->current_era);

	FUNC4(&md->current_writeset->md, &disk->current_writeset);
	disk->writeset_tree_root = FUNC2(md->writeset_tree_root);
	disk->era_array_root = FUNC2(md->era_array_root);
	disk->metadata_snap = FUNC2(md->metadata_snap);
}