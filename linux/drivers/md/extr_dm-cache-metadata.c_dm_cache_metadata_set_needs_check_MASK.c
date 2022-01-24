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
struct dm_cache_metadata {int /*<<< orphan*/  flags; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  NEEDS_CHECK ; 
 int /*<<< orphan*/  FUNC1 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_cache_metadata*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct cache_disk_superblock* FUNC4 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct dm_cache_metadata*,struct dm_block**) ; 

int FUNC8(struct dm_cache_metadata *cmd)
{
	int r;
	struct dm_block *sblock;
	struct cache_disk_superblock *disk_super;

	FUNC1(cmd);
	FUNC6(NEEDS_CHECK, &cmd->flags);

	r = FUNC7(cmd, &sblock);
	if (r) {
		FUNC0("couldn't read superblock");
		goto out;
	}

	disk_super = FUNC4(sblock);
	disk_super->flags = FUNC3(cmd->flags);

	FUNC5(sblock);

out:
	FUNC2(cmd);
	return r;
}