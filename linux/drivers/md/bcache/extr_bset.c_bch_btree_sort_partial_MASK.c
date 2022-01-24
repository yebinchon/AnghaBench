#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct btree_keys {size_t page_order; unsigned int nsets; TYPE_2__* set; } ;
struct btree_iter {int dummy; } ;
struct bset_sort_state {int dummy; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {scalar_t__ keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_keys*,struct btree_iter*,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_keys*,struct btree_iter*,unsigned int,size_t,int,struct bset_sort_state*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,size_t) ; 
 int FUNC4 (struct btree_keys*) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(struct btree_keys *b, unsigned int start,
			    struct bset_sort_state *state)
{
	size_t order = b->page_order, keys = 0;
	struct btree_iter iter;
	int oldsize = FUNC4(b);

	FUNC1(b, &iter, NULL, &b->set[start]);

	if (start) {
		unsigned int i;

		for (i = start; i <= b->nsets; i++)
			keys += b->set[i].data->keys;

		order = FUNC5(FUNC3(b->set->data, keys));
	}

	FUNC2(b, &iter, start, order, false, state);

	FUNC0(oldsize >= 0 && FUNC4(b) != oldsize);
}