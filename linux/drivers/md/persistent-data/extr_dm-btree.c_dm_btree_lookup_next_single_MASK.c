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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct dm_btree_info {int /*<<< orphan*/  tm; TYPE_2__ value_type; } ;
struct dm_block {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  nr_entries; int /*<<< orphan*/  flags; } ;
struct btree_node {int /*<<< orphan*/ * keys; TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int ENODATA ; 
 int INTERNAL_NODE ; 
 int FUNC0 (struct dm_btree_info*,int /*<<< orphan*/ ,struct dm_block**) ; 
 struct btree_node* FUNC1 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct btree_node*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct btree_node*,int) ; 

__attribute__((used)) static int FUNC10(struct dm_btree_info *info, dm_block_t root,
				       uint64_t key, uint64_t *rkey, void *value_le)
{
	int r, i;
	uint32_t flags, nr_entries;
	struct dm_block *node;
	struct btree_node *n;

	r = FUNC0(info, root, &node);
	if (r)
		return r;

	n = FUNC1(node);
	flags = FUNC3(n->header.flags);
	nr_entries = FUNC3(n->header.nr_entries);

	if (flags & INTERNAL_NODE) {
		i = FUNC5(n, key);
		if (i < 0) {
			/*
			 * avoid early -ENODATA return when all entries are
			 * higher than the search @key.
			 */
			i = 0;
		}
		if (i >= nr_entries) {
			r = -ENODATA;
			goto out;
		}

		r = FUNC10(info, FUNC8(n, i), key, rkey, value_le);
		if (r == -ENODATA && i < (nr_entries - 1)) {
			i++;
			r = FUNC10(info, FUNC8(n, i), key, rkey, value_le);
		}

	} else {
		i = FUNC7(n, key);
		if (i < 0 || i >= nr_entries) {
			r = -ENODATA;
			goto out;
		}

		*rkey = FUNC4(n->keys[i]);
		FUNC6(value_le, FUNC9(n, i), info->value_type.size);
	}
out:
	FUNC2(info->tm, node);
	return r;
}