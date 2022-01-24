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
struct btree_keys {TYPE_1__* set; } ;
struct bset_tree {unsigned int size; unsigned int* prev; unsigned int tree; int /*<<< orphan*/  data; } ;
struct bkey {int dummy; } ;
struct TYPE_2__ {unsigned int tree; } ;

/* Variables and functions */
 struct bkey* FUNC0 (struct bkey*) ; 
 unsigned int FUNC1 (struct bset_tree*,struct bkey*) ; 
 void* FUNC2 (struct bset_tree*,unsigned int,struct bkey*) ; 
 unsigned int FUNC3 (struct bkey*) ; 
 struct bkey* FUNC4 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct btree_keys*) ; 
 struct bkey* FUNC6 (struct bset_tree*,unsigned int,int /*<<< orphan*/ ) ; 
 struct bkey* FUNC7 (struct bset_tree*,int) ; 

__attribute__((used)) static void FUNC8(struct btree_keys *b,
				      struct bset_tree *t,
				      struct bkey *k)
{
	unsigned int shift = FUNC3(k);
	unsigned int j = FUNC1(t, k);

	/* We're getting called from btree_split() or btree_gc, just bail out */
	if (!t->size)
		return;

	/*
	 * k is the key we just inserted; we need to find the entry in the
	 * lookup table for the first key that is strictly greater than k:
	 * it's either k's cacheline or the next one
	 */
	while (j < t->size &&
	       FUNC7(t, j) <= k)
		j++;

	/*
	 * Adjust all the lookup table entries, and find a new key for any that
	 * have gotten too big
	 */
	for (; j < t->size; j++) {
		t->prev[j] += shift;

		if (t->prev[j] > 7) {
			k = FUNC7(t, j - 1);

			while (k < FUNC6(t, j, 0))
				k = FUNC0(k);

			t->prev[j] = FUNC2(t, j, k);
		}
	}

	if (t->size == b->set->tree + FUNC5(b) - t->tree)
		return;

	/* Possibly add a new entry to the end of the lookup table */

	for (k = FUNC7(t, t->size - 1);
	     k != FUNC4(t->data);
	     k = FUNC0(k))
		if (t->size == FUNC1(t, k)) {
			t->prev[t->size] =
				FUNC2(t, t->size, k);
			t->size++;
		}
}