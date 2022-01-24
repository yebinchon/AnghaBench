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
typedef  unsigned int uint32_t ;
struct dm_transaction_manager {int dummy; } ;
struct dm_btree_value_type {int /*<<< orphan*/  context; int /*<<< orphan*/  (* inc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;

/* Variables and functions */
 int INTERNAL_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct dm_transaction_manager*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct btree_node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct btree_node*,unsigned int) ; 

void FUNC5(struct dm_transaction_manager *tm, struct btree_node *n,
		  struct dm_btree_value_type *vt)
{
	unsigned i;
	uint32_t nr_entries = FUNC1(n->header.nr_entries);

	if (FUNC1(n->header.flags) & INTERNAL_NODE)
		for (i = 0; i < nr_entries; i++)
			FUNC0(tm, FUNC3(n, i));
	else if (vt->inc)
		for (i = 0; i < nr_entries; i++)
			vt->inc(vt->context, FUNC4(n, i));
}