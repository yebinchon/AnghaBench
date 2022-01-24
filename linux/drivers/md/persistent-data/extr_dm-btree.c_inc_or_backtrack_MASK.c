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
struct dm_btree_cursor {int depth; struct cursor_node* nodes; } ;
struct cursor_node {scalar_t__ index; int /*<<< orphan*/  b; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;

/* Variables and functions */
 int ENODATA ; 
 struct btree_node* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_btree_cursor*) ; 

__attribute__((used)) static int FUNC3(struct dm_btree_cursor *c)
{
	struct cursor_node *n;
	struct btree_node *bn;

	for (;;) {
		if (!c->depth)
			return -ENODATA;

		n = c->nodes + c->depth - 1;
		bn = FUNC0(n->b);

		n->index++;
		if (n->index < FUNC1(bn->header.nr_entries))
			break;

		FUNC2(c);
	}

	return 0;
}