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
struct btree_keys {int /*<<< orphan*/  page_order; struct bset_tree* set; } ;
struct bset_tree {int /*<<< orphan*/ * data; int /*<<< orphan*/ * tree; int /*<<< orphan*/ * prev; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct btree_keys*) ; 
 scalar_t__ FUNC1 (struct btree_keys*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct btree_keys *b)
{
	struct bset_tree *t = b->set;

	if (FUNC0(b) < PAGE_SIZE)
		FUNC4(t->prev);
	else
		FUNC2((unsigned long) t->prev,
			   FUNC3(FUNC0(b)));

	if (FUNC1(b) < PAGE_SIZE)
		FUNC4(t->tree);
	else
		FUNC2((unsigned long) t->tree,
			   FUNC3(FUNC1(b)));

	FUNC2((unsigned long) t->data, b->page_order);

	t->prev = NULL;
	t->tree = NULL;
	t->data = NULL;
}