#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct dm_btree_cursor {int depth; TYPE_3__* info; struct cursor_node* nodes; } ;
struct cursor_node {int /*<<< orphan*/  index; int /*<<< orphan*/  b; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct btree_node {TYPE_1__ header; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; } ;
struct TYPE_6__ {TYPE_2__ value_type; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODATA ; 
 int INTERNAL_NODE ; 
 struct btree_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct btree_node*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct btree_node*,int /*<<< orphan*/ ) ; 

int FUNC6(struct dm_btree_cursor *c, uint64_t *key, void *value_le)
{
	if (c->depth) {
		struct cursor_node *n = c->nodes + c->depth - 1;
		struct btree_node *bn = FUNC0(n->b);

		if (FUNC2(bn->header.flags) & INTERNAL_NODE)
			return -EINVAL;

		*key = FUNC3(*FUNC1(bn, n->index));
		FUNC4(value_le, FUNC5(bn, n->index), c->info->value_type.size);
		return 0;

	} else
		return -ENODATA;
}