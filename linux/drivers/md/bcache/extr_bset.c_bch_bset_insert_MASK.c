#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct btree_keys {int page_order; int /*<<< orphan*/  last_set_unwritten; } ;
struct bset_tree {TYPE_1__* data; } ;
struct bkey {int dummy; } ;
struct TYPE_4__ {int keys; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_keys*,struct bset_tree*,struct bkey*) ; 
 int /*<<< orphan*/  FUNC3 (struct bkey*,struct bkey*) ; 
 int FUNC4 (struct bkey*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct btree_keys*,TYPE_1__*) ; 
 struct bset_tree* FUNC7 (struct btree_keys*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct bkey*,int) ; 

void FUNC9(struct btree_keys *b, struct bkey *where,
		     struct bkey *insert)
{
	struct bset_tree *t = FUNC7(b);

	FUNC0(!b->last_set_unwritten);
	FUNC0(FUNC6(b, t->data) +
	       FUNC1(t->data, t->data->keys + FUNC4(insert)) >
	       PAGE_SIZE << b->page_order);

	FUNC8((uint64_t *) where + FUNC4(insert),
		where,
		(void *) FUNC5(t->data) - (void *) where);

	t->data->keys += FUNC4(insert);
	FUNC3(where, insert);
	FUNC2(b, t, where);
}