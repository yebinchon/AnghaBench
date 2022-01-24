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
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC6 (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct shadow_spine*) ; 
 scalar_t__ FUNC8 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC9 (struct shadow_spine*) ; 
 int FUNC10 (struct shadow_spine*,int /*<<< orphan*/ ,struct dm_btree_value_type*) ; 
 int /*<<< orphan*/  FUNC11 (struct btree_node*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btree_node*,int) ; 

__attribute__((used)) static int FUNC13(struct shadow_spine *s, struct dm_btree_info *info,
			  struct dm_btree_value_type *vt, dm_block_t root,
			  uint64_t key, int *index)
{
	int i = *index, r;
	struct btree_node *n;

	for (;;) {
		r = FUNC10(s, root, vt);
		if (r < 0)
			break;

		/*
		 * We have to patch up the parent node, ugly, but I don't
		 * see a way to do this automatically as part of the spine
		 * op.
		 */
		if (FUNC8(s)) {
			__le64 location = FUNC0(FUNC2(FUNC7(s)));
			FUNC5(FUNC12(FUNC1(FUNC9(s)), i),
			       &location, sizeof(__le64));
		}

		n = FUNC1(FUNC7(s));

		if (FUNC3(n->header.flags) & LEAF_NODE) {
			*index = FUNC4(n, key);
			return 0;
		}

		r = FUNC6(s, info, vt, key);
		if (r)
			break;

		n = FUNC1(FUNC7(s));
		if (FUNC3(n->header.flags) & LEAF_NODE) {
			*index = FUNC4(n, key);
			return 0;
		}

		i = FUNC4(n, key);

		/*
		 * We know the key is present, or else
		 * rebalance_children would have returned
		 * -ENODATA
		 */
		root = FUNC11(n, i);
	}

	return r;
}