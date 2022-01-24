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
struct dm_cache_metadata {int /*<<< orphan*/  metadata_space_map_root; } ;
struct cache_disk_superblock {int /*<<< orphan*/  metadata_space_map_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct dm_cache_metadata *cmd,
			   struct cache_disk_superblock *disk_super)
{
	FUNC0(&disk_super->metadata_space_map_root,
	       &cmd->metadata_space_map_root,
	       sizeof(cmd->metadata_space_map_root));
}