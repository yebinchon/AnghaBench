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
struct shadow_spine {int count; int /*<<< orphan*/ * nodes; int /*<<< orphan*/  root; int /*<<< orphan*/  info; } ;
struct dm_btree_value_type {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_btree_value_type*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(struct shadow_spine *s, dm_block_t b,
		struct dm_btree_value_type *vt)
{
	int r;

	if (s->count == 2) {
		FUNC2(s->info, s->nodes[0]);
		s->nodes[0] = s->nodes[1];
		s->count--;
	}

	r = FUNC0(s->info, b, vt, s->nodes + s->count);
	if (!r) {
		if (!s->count)
			s->root = FUNC1(s->nodes[0]);

		s->count++;
	}

	return r;
}