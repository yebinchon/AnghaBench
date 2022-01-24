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
struct dm_btree_cursor {int depth; scalar_t__ prefetch_leaves; int /*<<< orphan*/  info; struct cursor_node* nodes; } ;
struct cursor_node {scalar_t__ index; int /*<<< orphan*/  b; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int DM_BTREE_CURSOR_MAX_DEPTH ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_btree_cursor*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_btree_cursor*) ; 

__attribute__((used)) static int FUNC4(struct dm_btree_cursor *c, dm_block_t b)
{
	int r;
	struct cursor_node *n = c->nodes + c->depth;

	if (c->depth >= DM_BTREE_CURSOR_MAX_DEPTH - 1) {
		FUNC0("couldn't push cursor node, stack depth too high");
		return -EINVAL;
	}

	r = FUNC1(c->info, b, &n->b);
	if (r)
		return r;

	n->index = 0;
	c->depth++;

	if (c->prefetch_leaves || !FUNC2(c))
		FUNC3(c);

	return 0;
}