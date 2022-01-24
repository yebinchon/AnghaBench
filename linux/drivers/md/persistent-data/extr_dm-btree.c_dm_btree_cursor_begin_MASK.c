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
struct dm_btree_info {int dummy; } ;
struct dm_btree_cursor {int prefetch_leaves; scalar_t__ depth; int /*<<< orphan*/  root; struct dm_btree_info* info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int FUNC0 (struct dm_btree_cursor*) ; 
 int FUNC1 (struct dm_btree_cursor*,int /*<<< orphan*/ ) ; 

int FUNC2(struct dm_btree_info *info, dm_block_t root,
			  bool prefetch_leaves, struct dm_btree_cursor *c)
{
	int r;

	c->info = info;
	c->root = root;
	c->depth = 0;
	c->prefetch_leaves = prefetch_leaves;

	r = FUNC1(c, root);
	if (r)
		return r;

	return FUNC0(c);
}