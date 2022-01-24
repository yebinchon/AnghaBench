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
struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int /*<<< orphan*/  tm; } ;
struct child {unsigned int index; int /*<<< orphan*/  block; int /*<<< orphan*/  n; } ;
struct btree_node {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int /*<<< orphan*/  btree_node_validator ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_btree_value_type*) ; 
 int /*<<< orphan*/  FUNC5 (struct btree_node*,unsigned int) ; 
 scalar_t__ FUNC6 (struct btree_node*,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct dm_btree_info *info, struct dm_btree_value_type *vt,
		      struct btree_node *parent,
		      unsigned index, struct child *result)
{
	int r, inc;
	dm_block_t root;

	result->index = index;
	root = FUNC5(parent, index);

	r = FUNC3(info->tm, root, &btree_node_validator,
			       &result->block, &inc);
	if (r)
		return r;

	result->n = FUNC1(result->block);

	if (inc)
		FUNC4(info->tm, result->n, vt);

	*((__le64 *) FUNC6(parent, index)) =
		FUNC0(FUNC2(result->block));

	return 0;
}