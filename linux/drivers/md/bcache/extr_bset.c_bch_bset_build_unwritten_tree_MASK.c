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
struct btree_keys {int last_set_unwritten; TYPE_2__* set; } ;
struct bset_tree {scalar_t__ tree; int size; TYPE_1__* data; int /*<<< orphan*/ * prev; } ;
struct TYPE_4__ {scalar_t__ tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct bset_tree*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_keys*,struct bset_tree*) ; 
 struct bset_tree* FUNC3 (struct btree_keys*) ; 
 scalar_t__ FUNC4 (struct btree_keys*) ; 

__attribute__((used)) static void FUNC5(struct btree_keys *b)
{
	struct bset_tree *t = FUNC3(b);

	FUNC0(b->last_set_unwritten);
	b->last_set_unwritten = 1;

	FUNC2(b, t);

	if (t->tree != b->set->tree + FUNC4(b)) {
		t->prev[0] = FUNC1(t, 0, t->data->start);
		t->size = 1;
	}
}