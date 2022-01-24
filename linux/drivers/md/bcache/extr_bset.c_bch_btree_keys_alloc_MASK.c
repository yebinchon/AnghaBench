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
struct btree_keys {unsigned int page_order; struct bset_tree* set; } ;
struct bset_tree {void* prev; void* tree; void* data; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int ENOMEM ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_keys*) ; 
 scalar_t__ FUNC3 (struct btree_keys*) ; 
 scalar_t__ FUNC4 (struct btree_keys*) ; 
 unsigned int FUNC5 (scalar_t__) ; 
 void* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC7(struct btree_keys *b,
			 unsigned int page_order,
			 gfp_t gfp)
{
	struct bset_tree *t = b->set;

	FUNC0(t->data);

	b->page_order = page_order;

	t->data = (void *) FUNC1(gfp, b->page_order);
	if (!t->data)
		goto err;

	t->tree = FUNC4(b) < PAGE_SIZE
		? FUNC6(FUNC4(b), gfp)
		: (void *) FUNC1(gfp, FUNC5(FUNC4(b)));
	if (!t->tree)
		goto err;

	t->prev = FUNC3(b) < PAGE_SIZE
		? FUNC6(FUNC3(b), gfp)
		: (void *) FUNC1(gfp, FUNC5(FUNC3(b)));
	if (!t->prev)
		goto err;

	return 0;
err:
	FUNC2(b);
	return -ENOMEM;
}