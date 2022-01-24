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
typedef  scalar_t__ uint64_t ;
struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* dec ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct dm_btree_info {int levels; TYPE_2__ value_type; int /*<<< orphan*/  tm; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {int /*<<< orphan*/ * keys; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  FUNC0 (struct btree_node*,int) ; 
 struct btree_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct dm_btree_value_type*) ; 
 int /*<<< orphan*/  FUNC4 (struct shadow_spine*,struct dm_btree_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct shadow_spine*,struct dm_btree_info*,TYPE_2__*,int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC8 (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int /*<<< orphan*/ ,scalar_t__,unsigned int*) ; 
 int /*<<< orphan*/  FUNC9 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC10 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct btree_node*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btree_node*,int) ; 

__attribute__((used)) static int FUNC14(struct dm_btree_info *info, dm_block_t root,
		      uint64_t *keys, uint64_t end_key,
		      dm_block_t *new_root, unsigned *nr_removed)
{
	unsigned level, last_level = info->levels - 1;
	int index = 0, r = 0;
	struct shadow_spine spine;
	struct btree_node *n;
	struct dm_btree_value_type le64_vt;
	uint64_t k;

	FUNC3(info->tm, &le64_vt);
	FUNC4(&spine, info);
	for (level = 0; level < last_level; level++) {
		r = FUNC8(&spine, info, &le64_vt,
			       root, keys[level], (unsigned *) &index);
		if (r < 0)
			goto out;

		n = FUNC1(FUNC9(&spine));
		root = FUNC12(n, index);
	}

	r = FUNC7(&spine, info, &info->value_type,
			   root, keys[last_level], &index);
	if (r < 0)
		goto out;

	n = FUNC1(FUNC9(&spine));

	if (index < 0)
		index = 0;

	if (index >= FUNC5(n->header.nr_entries)) {
		r = -ENODATA;
		goto out;
	}

	k = FUNC6(n->keys[index]);
	if (k >= keys[last_level] && k < end_key) {
		if (info->value_type.dec)
			info->value_type.dec(info->value_type.context,
					     FUNC13(n, index));

		FUNC0(n, index);
		keys[last_level] = k + 1ull;

	} else
		r = -ENODATA;

out:
	*new_root = FUNC10(&spine);
	FUNC2(&spine);

	return r;
}