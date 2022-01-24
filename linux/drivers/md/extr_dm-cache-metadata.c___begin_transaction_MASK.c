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
struct dm_cache_metadata {int dummy; } ;
struct dm_block {int dummy; } ;
struct cache_disk_superblock {int dummy; } ;

/* Variables and functions */
 struct cache_disk_superblock* FUNC0 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_cache_metadata*,struct cache_disk_superblock*) ; 
 int FUNC3 (struct dm_cache_metadata*,struct dm_block**) ; 

__attribute__((used)) static int FUNC4(struct dm_cache_metadata *cmd)
{
	int r;
	struct cache_disk_superblock *disk_super;
	struct dm_block *sblock;

	/*
	 * We re-read the superblock every time.  Shouldn't need to do this
	 * really.
	 */
	r = FUNC3(cmd, &sblock);
	if (r)
		return r;

	disk_super = FUNC0(sblock);
	FUNC2(cmd, disk_super);
	FUNC1(sblock);

	return 0;
}