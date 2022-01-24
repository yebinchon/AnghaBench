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
struct rdma_nl_cbs {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cb_table; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 TYPE_1__* rdma_nl_types ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct rdma_nl_cbs const*) ; 

void FUNC4(unsigned int index,
		      const struct rdma_nl_cbs cb_table[])
{
	if (FUNC1(!FUNC2(index, 0)) ||
	    FUNC1(FUNC0(rdma_nl_types[index].cb_table)))
		return;

	/* Pairs with the READ_ONCE in is_nl_valid() */
	FUNC3(&rdma_nl_types[index].cb_table, cb_table);
}