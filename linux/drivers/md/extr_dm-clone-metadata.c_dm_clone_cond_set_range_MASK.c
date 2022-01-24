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
struct dm_clone_metadata {int /*<<< orphan*/  bitmap_lock; int /*<<< orphan*/  region_map; struct dirty_map* current_dmap; scalar_t__ read_only; } ;
struct dirty_map {int changed; int /*<<< orphan*/  dirty_words; } ;

/* Variables and functions */
 unsigned long BITS_PER_LONG ; 
 int EPERM ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 

int FUNC4(struct dm_clone_metadata *cmd, unsigned long start,
			    unsigned long nr_regions)
{
	int r = 0;
	struct dirty_map *dmap;
	unsigned long word, region_nr, flags;

	FUNC1(&cmd->bitmap_lock, flags);

	if (cmd->read_only) {
		r = -EPERM;
		goto out;
	}

	dmap = cmd->current_dmap;
	for (region_nr = start; region_nr < (start + nr_regions); region_nr++) {
		if (!FUNC3(region_nr, cmd->region_map)) {
			word = region_nr / BITS_PER_LONG;
			FUNC0(word, dmap->dirty_words);
			FUNC0(region_nr, cmd->region_map);
			dmap->changed = 1;
		}
	}
out:
	FUNC2(&cmd->bitmap_lock, flags);

	return r;
}