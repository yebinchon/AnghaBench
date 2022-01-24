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
struct dm_cache_metadata {int /*<<< orphan*/  bm; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {int dummy; } ;
typedef  int /*<<< orphan*/  flags_mutator ;

/* Variables and functions */
 struct cache_disk_superblock* FUNC0 (struct dm_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_cache_metadata*,struct cache_disk_superblock*) ; 
 int FUNC4 (struct dm_cache_metadata*,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC5 (struct cache_disk_superblock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dm_cache_metadata *cmd,
				     flags_mutator mutator)
{
	int r;
	struct cache_disk_superblock *disk_super;
	struct dm_block *sblock;

	r = FUNC4(cmd, &sblock);
	if (r)
		return r;

	disk_super = FUNC0(sblock);
	FUNC5(disk_super, mutator);
	FUNC3(cmd, disk_super);
	FUNC2(sblock);

	return FUNC1(cmd->bm);
}