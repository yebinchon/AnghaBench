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
typedef  scalar_t__ uint64_t ;
struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct TYPE_2__ {scalar_t__ nr_entries; scalar_t__ max_entries; int /*<<< orphan*/  flags; } ;
struct btree_node {void** keys; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  void* __le64 ;

/* Variables and functions */
 int LEAF_NODE ; 
 int /*<<< orphan*/  FUNC0 (void**) ; 
 int FUNC1 (struct shadow_spine*,scalar_t__) ; 
 int FUNC2 (struct shadow_spine*,int,scalar_t__) ; 
 void* FUNC3 (scalar_t__) ; 
 struct btree_node* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*) ; 
 int FUNC8 (struct btree_node*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void**,int) ; 
 int /*<<< orphan*/  FUNC10 (struct shadow_spine*) ; 
 scalar_t__ FUNC11 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC12 (struct shadow_spine*) ; 
 int FUNC13 (struct shadow_spine*,int /*<<< orphan*/ ,struct dm_btree_value_type*) ; 
 int /*<<< orphan*/  FUNC14 (struct btree_node*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct btree_node*,int) ; 

__attribute__((used)) static int FUNC16(struct shadow_spine *s, dm_block_t root,
			    struct dm_btree_value_type *vt,
			    uint64_t key, unsigned *index)
{
	int r, i = *index, top = 1;
	struct btree_node *node;

	for (;;) {
		r = FUNC13(s, root, vt);
		if (r < 0)
			return r;

		node = FUNC4(FUNC10(s));

		/*
		 * We have to patch up the parent node, ugly, but I don't
		 * see a way to do this automatically as part of the spine
		 * op.
		 */
		if (FUNC11(s) && i >= 0) { /* FIXME: second clause unness. */
			__le64 location = FUNC3(FUNC5(FUNC10(s)));

			FUNC0(&location);
			FUNC9(FUNC15(FUNC4(FUNC12(s)), i),
				    &location, sizeof(__le64));
		}

		node = FUNC4(FUNC10(s));

		if (node->header.nr_entries == node->header.max_entries) {
			if (top)
				r = FUNC1(s, key);
			else
				r = FUNC2(s, i, key);

			if (r < 0)
				return r;
		}

		node = FUNC4(FUNC10(s));

		i = FUNC8(node, key);

		if (FUNC6(node->header.flags) & LEAF_NODE)
			break;

		if (i < 0) {
			/* change the bounds on the lowest key */
			node->keys[0] = FUNC3(key);
			i = 0;
		}

		root = FUNC14(node, i);
		top = 0;
	}

	if (i < 0 || FUNC7(node->keys[i]) != key)
		i++;

	*index = i;
	return 0;
}