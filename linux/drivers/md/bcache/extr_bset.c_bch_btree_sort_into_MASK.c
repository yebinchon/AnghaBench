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
typedef  int /*<<< orphan*/  uint64_t ;
struct btree_keys {TYPE_1__* set; } ;
struct btree_iter {int dummy; } ;
struct bset_sort_state {int /*<<< orphan*/  time; } ;
struct TYPE_2__ {scalar_t__ size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btree_keys*,struct btree_iter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct btree_keys*,int /*<<< orphan*/ ,struct btree_iter*,int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(struct btree_keys *b, struct btree_keys *new,
			 struct bset_sort_state *state)
{
	uint64_t start_time = FUNC3();
	struct btree_iter iter;

	FUNC0(b, &iter, NULL);

	FUNC2(b, new->set->data, &iter, false, true);

	FUNC1(&state->time, start_time);

	new->set->size = 0; // XXX: why?
}