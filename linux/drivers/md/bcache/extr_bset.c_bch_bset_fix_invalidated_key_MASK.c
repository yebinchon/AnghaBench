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
struct btree_keys {struct bset_tree* set; } ;
struct bkey {int dummy; } ;
struct bset_tree {unsigned int size; struct bkey end; TYPE_1__* data; } ;
struct TYPE_2__ {struct bkey* start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct bkey* FUNC1 (struct bkey*) ; 
 unsigned int FUNC2 (struct bset_tree*,struct bkey*) ; 
 struct bkey* FUNC3 (TYPE_1__*) ; 
 struct bset_tree* FUNC4 (struct btree_keys*) ; 
 int /*<<< orphan*/  FUNC5 (struct btree_keys*,struct bset_tree*) ; 
 unsigned int FUNC6 (unsigned int,struct bset_tree*) ; 
 int /*<<< orphan*/  FUNC7 (struct bset_tree*,unsigned int) ; 
 struct bkey* FUNC8 (struct bset_tree*,unsigned int) ; 
 struct bkey* FUNC9 (struct bset_tree*,unsigned int) ; 

void FUNC10(struct btree_keys *b, struct bkey *k)
{
	struct bset_tree *t;
	unsigned int inorder, j = 1;

	for (t = b->set; t <= FUNC4(b); t++)
		if (k < FUNC3(t->data))
			goto found_set;

	FUNC0();
found_set:
	if (!t->size || !FUNC5(b, t))
		return;

	inorder = FUNC2(t, k);

	if (k == t->data->start)
		goto fix_left;

	if (FUNC1(k) == FUNC3(t->data)) {
		t->end = *k;
		goto fix_right;
	}

	j = FUNC6(inorder, t);

	if (j &&
	    j < t->size &&
	    k == FUNC8(t, j))
fix_left:	do {
			FUNC7(t, j);
			j = j * 2;
		} while (j < t->size);

	j = FUNC6(inorder + 1, t);

	if (j &&
	    j < t->size &&
	    k == FUNC9(t, j))
fix_right:	do {
			FUNC7(t, j);
			j = j * 2 + 1;
		} while (j < t->size);
}