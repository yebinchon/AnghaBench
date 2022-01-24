#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value_le ;
struct dm_btree_cursor {int depth; struct cursor_node* nodes; } ;
struct cursor_node {int /*<<< orphan*/  index; int /*<<< orphan*/  b; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  flags; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENODATA ; 
 int LEAF_NODE ; 
 struct btree_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct dm_btree_cursor*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btree_node*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct dm_btree_cursor *c)
{
	int r = 0;
	struct cursor_node *n;
	struct btree_node *bn;
	__le64 value_le;

	for (;;) {
		n = c->nodes + c->depth - 1;
		bn = FUNC1(n->b);

		if (FUNC2(bn->header.flags) & LEAF_NODE)
			break;

		FUNC4(&value_le, FUNC6(bn, n->index), sizeof(value_le));
		r = FUNC5(c, FUNC3(value_le));
		if (r) {
			FUNC0("push_node failed");
			break;
		}
	}

	if (!r && (FUNC2(bn->header.nr_entries) == 0))
		return -ENODATA;

	return r;
}