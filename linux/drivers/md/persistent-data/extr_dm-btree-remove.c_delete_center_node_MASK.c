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
typedef  scalar_t__ uint32_t ;
struct dm_btree_info {int /*<<< orphan*/  tm; } ;
struct child {int /*<<< orphan*/  block; int /*<<< orphan*/  index; } ;
struct TYPE_2__ {void* nr_entries; int /*<<< orphan*/  max_entries; } ;
struct btree_node {int /*<<< orphan*/ * keys; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_btree_info*,struct btree_node*,struct child*,struct child*) ; 
 void* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct btree_node*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct btree_node*,struct btree_node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct btree_node*,unsigned int) ; 

__attribute__((used)) static void FUNC11(struct dm_btree_info *info, struct btree_node *parent,
			       struct child *l, struct child *c, struct child *r,
			       struct btree_node *left, struct btree_node *center, struct btree_node *right,
			       uint32_t nr_left, uint32_t nr_center, uint32_t nr_right)
{
	uint32_t max_entries = FUNC7(left->header.max_entries);
	unsigned shift = FUNC8(max_entries - nr_left, nr_center);

	FUNC0(nr_left + shift > max_entries);
	FUNC9(left, center, -shift);
	left->header.nr_entries = FUNC2(nr_left + shift);

	if (shift != nr_center) {
		shift = nr_center - shift;
		FUNC0((nr_right + shift) > max_entries);
		FUNC10(right, shift);
		FUNC9(center, right, shift);
		right->header.nr_entries = FUNC2(nr_right + shift);
	}
	*FUNC6(parent, r->index) = right->keys[0];

	FUNC3(parent, c->index);
	r->index--;

	FUNC5(info->tm, FUNC4(c->block));
	FUNC1(info, parent, l, r);
}