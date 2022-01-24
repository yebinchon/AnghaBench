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
struct superblock_disk {void* bitset_root; void* target_size; void* region_size; int /*<<< orphan*/  metadata_space_map_root; void* version; void* magic; int /*<<< orphan*/  uuid; void* flags; } ;
struct dm_clone_metadata {int /*<<< orphan*/  bitset_root; int /*<<< orphan*/  target_size; int /*<<< orphan*/  region_size; int /*<<< orphan*/  metadata_space_map_root; } ;

/* Variables and functions */
 unsigned long DM_CLONE_MAX_METADATA_VERSION ; 
 int /*<<< orphan*/  SUPERBLOCK_MAGIC ; 
 void* FUNC0 (unsigned long) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dm_clone_metadata *cmd,
				 struct superblock_disk *sb)
{
	sb->flags = FUNC0(0UL);

	/* FIXME: UUID is currently unused */
	FUNC3(sb->uuid, 0, sizeof(sb->uuid));

	sb->magic = FUNC1(SUPERBLOCK_MAGIC);
	sb->version = FUNC0(DM_CLONE_MAX_METADATA_VERSION);

	/* Save the metadata space_map root */
	FUNC2(&sb->metadata_space_map_root, &cmd->metadata_space_map_root,
	       sizeof(cmd->metadata_space_map_root));

	sb->region_size = FUNC1(cmd->region_size);
	sb->target_size = FUNC1(cmd->target_size);
	sb->bitset_root = FUNC1(cmd->bitset_root);
}