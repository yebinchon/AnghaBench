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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  size; } ;
struct dm_btree_info {TYPE_2__ value_type; int /*<<< orphan*/  tm; } ;
struct dm_block {int dummy; } ;
struct TYPE_3__ {void* value_size; void* max_entries; void* nr_entries; void* flags; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  LEAF_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct btree_node* FUNC2 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_block*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btree_node*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC7 (struct dm_btree_info*,struct dm_block**) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_btree_info*,struct dm_block*) ; 

int FUNC9(struct dm_btree_info *info, dm_block_t *root)
{
	int r;
	struct dm_block *b;
	struct btree_node *n;
	size_t block_size;
	uint32_t max_entries;

	r = FUNC7(info, &b);
	if (r < 0)
		return r;

	block_size = FUNC4(FUNC5(info->tm));
	max_entries = FUNC0(info->value_type.size, block_size);

	n = FUNC2(b);
	FUNC6(n, 0, block_size);
	n->header.flags = FUNC1(LEAF_NODE);
	n->header.nr_entries = FUNC1(0);
	n->header.max_entries = FUNC1(max_entries);
	n->header.value_size = FUNC1(info->value_type.size);

	*root = FUNC3(b);
	FUNC8(info, b);

	return 0;
}