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
typedef  unsigned int uint32_t ;
struct dm_btree_info {int dummy; } ;
struct child {int /*<<< orphan*/  index; } ;
struct TYPE_2__ {int /*<<< orphan*/  max_entries; } ;
struct btree_node {int /*<<< orphan*/ * keys; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (struct btree_node*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btree_node*,struct btree_node*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct dm_btree_info *info, struct btree_node *parent,
			  struct child *l, struct child *c, struct child *r,
			  struct btree_node *left, struct btree_node *center, struct btree_node *right,
			  uint32_t nr_left, uint32_t nr_center, uint32_t nr_right)
{
	int s;
	uint32_t max_entries = FUNC2(left->header.max_entries);
	unsigned total = nr_left + nr_center + nr_right;
	unsigned target_right = total / 3;
	unsigned remainder = (target_right * 3) != total;
	unsigned target_left = target_right + remainder;

	FUNC0(target_left > max_entries);
	FUNC0(target_right > max_entries);

	if (nr_left < nr_right) {
		s = nr_left - target_left;

		if (s < 0 && nr_center < -s) {
			/* not enough in central node */
			FUNC3(left, center, -nr_center);
			s += nr_center;
			FUNC3(left, right, s);
			nr_right += s;
		} else
			FUNC3(left, center, s);

		FUNC3(center, right, target_right - nr_right);

	} else {
		s = target_right - nr_right;
		if (s > 0 && nr_center < s) {
			/* not enough in central node */
			FUNC3(center, right, nr_center);
			s -= nr_center;
			FUNC3(left, right, s);
			nr_left -= s;
		} else
			FUNC3(center, right, s);

		FUNC3(left, center, nr_left - target_left);
	}

	*FUNC1(parent, c->index) = center->keys[0];
	*FUNC1(parent, r->index) = right->keys[0];
}