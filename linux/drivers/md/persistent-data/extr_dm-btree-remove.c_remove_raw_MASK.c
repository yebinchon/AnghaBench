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
struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int LEAF_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct btree_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct btree_node*,int /*<<< orphan*/ ,unsigned int*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC7 (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct shadow_spine*) ; 
 scalar_t__ FUNC9 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC10 (struct shadow_spine*) ; 
 int FUNC11 (struct shadow_spine*,int /*<<< orphan*/ ,struct dm_btree_value_type*) ; 
 int /*<<< orphan*/  FUNC12 (struct btree_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btree_node*,int) ; 

__attribute__((used)) static int FUNC14(struct shadow_spine *s, struct dm_btree_info *info,
		      struct dm_btree_value_type *vt, dm_block_t root,
		      uint64_t key, unsigned *index)
{
	int i = *index, r;
	struct btree_node *n;

	for (;;) {
		r = FUNC11(s, root, vt);
		if (r < 0)
			break;

		/*
		 * We have to patch up the parent node, ugly, but I don't
		 * see a way to do this automatically as part of the spine
		 * op.
		 */
		if (FUNC9(s)) {
			__le64 location = FUNC0(FUNC2(FUNC8(s)));
			FUNC6(FUNC13(FUNC1(FUNC10(s)), i),
			       &location, sizeof(__le64));
		}

		n = FUNC1(FUNC8(s));

		if (FUNC4(n->header.flags) & LEAF_NODE)
			return FUNC3(n, key, index);

		r = FUNC7(s, info, vt, key);
		if (r)
			break;

		n = FUNC1(FUNC8(s));
		if (FUNC4(n->header.flags) & LEAF_NODE)
			return FUNC3(n, key, index);

		i = FUNC5(n, key);

		/*
		 * We know the key is present, or else
		 * rebalance_children would have returned
		 * -ENODATA
		 */
		root = FUNC12(n, i);
	}

	return r;
}