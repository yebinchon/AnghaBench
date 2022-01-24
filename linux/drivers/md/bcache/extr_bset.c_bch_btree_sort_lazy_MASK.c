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
struct btree_keys {int nsets; TYPE_2__* set; } ;
struct bset_sort_state {unsigned int crit_factor; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct TYPE_3__ {unsigned int keys; } ;

/* Variables and functions */
 int MAX_BSETS ; 
 unsigned int SORT_CRIT ; 
 int /*<<< orphan*/  FUNC0 (struct btree_keys*) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_keys*,struct bset_sort_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_keys*,int,struct bset_sort_state*) ; 

void FUNC3(struct btree_keys *b, struct bset_sort_state *state)
{
	unsigned int crit = SORT_CRIT;
	int i;

	/* Don't sort if nothing to do */
	if (!b->nsets)
		goto out;

	for (i = b->nsets - 1; i >= 0; --i) {
		crit *= state->crit_factor;

		if (b->set[i].data->keys < crit) {
			FUNC2(b, i, state);
			return;
		}
	}

	/* Sort if we'd overflow */
	if (b->nsets + 1 == MAX_BSETS) {
		FUNC1(b, state);
		return;
	}

out:
	FUNC0(b);
}