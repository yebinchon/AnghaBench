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
struct dm_clone_metadata {int /*<<< orphan*/  lock; int /*<<< orphan*/  bitmap_lock; struct dirty_map* current_dmap; struct dirty_map* dmap; int /*<<< orphan*/  bm; scalar_t__ fail_io; } ;
struct dirty_map {int /*<<< orphan*/  changed; } ;

/* Variables and functions */
 int EINVAL ; 
 int EPERM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dm_clone_metadata*,struct dirty_map*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct dm_clone_metadata *cmd)
{
	int r = -EPERM;
	unsigned long flags;
	struct dirty_map *dmap, *next_dmap;

	FUNC3(&cmd->lock);

	if (cmd->fail_io || FUNC2(cmd->bm))
		goto out;

	/* Get current dirty bitmap */
	dmap = cmd->current_dmap;

	/* Get next dirty bitmap */
	next_dmap = (dmap == &cmd->dmap[0]) ? &cmd->dmap[1] : &cmd->dmap[0];

	/*
	 * The last commit failed, so we don't have a clean dirty-bitmap to
	 * use.
	 */
	if (FUNC0(next_dmap->changed)) {
		r = -EINVAL;
		goto out;
	}

	/* Swap dirty bitmaps */
	FUNC4(&cmd->bitmap_lock, flags);
	cmd->current_dmap = next_dmap;
	FUNC5(&cmd->bitmap_lock, flags);

	/*
	 * No one is accessing the old dirty bitmap anymore, so we can flush
	 * it.
	 */
	r = FUNC1(cmd, dmap);
out:
	FUNC6(&cmd->lock);

	return r;
}