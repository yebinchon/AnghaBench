#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value_le ;
struct dm_btree_cursor {int depth; TYPE_2__* info; struct cursor_node* nodes; } ;
struct dm_block_manager {int dummy; } ;
struct cursor_node {int /*<<< orphan*/  b; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {TYPE_3__ header; } ;
typedef  int /*<<< orphan*/  __le64 ;
struct TYPE_4__ {int size; } ;
struct TYPE_5__ {TYPE_1__ value_type; int /*<<< orphan*/  tm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct btree_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_block_manager*,int /*<<< orphan*/ ) ; 
 struct dm_block_manager* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btree_node*,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct dm_btree_cursor *c)
{
	unsigned i, nr;
	__le64 value_le;
	struct cursor_node *n = c->nodes + c->depth - 1;
	struct btree_node *bn = FUNC1(n->b);
	struct dm_block_manager *bm = FUNC3(c->info->tm);

	FUNC0(c->info->value_type.size != sizeof(value_le));

	nr = FUNC4(bn->header.nr_entries);
	for (i = 0; i < nr; i++) {
		FUNC6(&value_le, FUNC7(bn, i), sizeof(value_le));
		FUNC2(bm, FUNC5(value_le));
	}
}