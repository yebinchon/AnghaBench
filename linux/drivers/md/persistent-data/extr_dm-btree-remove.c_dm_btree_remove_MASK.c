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
struct dm_btree_value_type {int /*<<< orphan*/  context; int /*<<< orphan*/  (* dec ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct dm_btree_info {int levels; struct dm_btree_value_type value_type; int /*<<< orphan*/  tm; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_node*,int) ; 
 struct btree_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dm_btree_value_type*) ; 
 int /*<<< orphan*/  FUNC5 (struct shadow_spine*,struct dm_btree_info*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC8 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC9 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct btree_node*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct btree_node*,int) ; 

int FUNC13(struct dm_btree_info *info, dm_block_t root,
		    uint64_t *keys, dm_block_t *new_root)
{
	unsigned level, last_level = info->levels - 1;
	int index = 0, r = 0;
	struct shadow_spine spine;
	struct btree_node *n;
	struct dm_btree_value_type le64_vt;

	FUNC4(info->tm, &le64_vt);
	FUNC5(&spine, info);
	for (level = 0; level < info->levels; level++) {
		r = FUNC7(&spine, info,
			       (level == last_level ?
				&info->value_type : &le64_vt),
			       root, keys[level], (unsigned *)&index);
		if (r < 0)
			break;

		n = FUNC2(FUNC8(&spine));
		if (level != last_level) {
			root = FUNC11(n, index);
			continue;
		}

		FUNC0(index < 0 || index >= FUNC6(n->header.nr_entries));

		if (info->value_type.dec)
			info->value_type.dec(info->value_type.context,
					     FUNC12(n, index));

		FUNC1(n, index);
	}

	*new_root = FUNC9(&spine);
	FUNC3(&spine);

	return r;
}