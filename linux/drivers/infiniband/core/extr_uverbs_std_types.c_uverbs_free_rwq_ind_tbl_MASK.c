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
struct uverbs_attr_bundle {int dummy; } ;
struct ib_wq {int dummy; } ;
struct ib_uobject {struct ib_rwq_ind_table* object; } ;
struct ib_rwq_ind_table {struct ib_wq** ind_tbl; } ;
typedef  enum rdma_remove_reason { ____Placeholder_rdma_remove_reason } rdma_remove_reason ;

/* Variables and functions */
 int FUNC0 (struct ib_rwq_ind_table*) ; 
 scalar_t__ FUNC1 (int,int,struct ib_uobject*) ; 
 int /*<<< orphan*/  FUNC2 (struct ib_wq**) ; 

__attribute__((used)) static int FUNC3(struct ib_uobject *uobject,
				   enum rdma_remove_reason why,
				   struct uverbs_attr_bundle *attrs)
{
	struct ib_rwq_ind_table *rwq_ind_tbl = uobject->object;
	struct ib_wq **ind_tbl = rwq_ind_tbl->ind_tbl;
	int ret;

	ret = FUNC0(rwq_ind_tbl);
	if (FUNC1(ret, why, uobject))
		return ret;

	FUNC2(ind_tbl);
	return ret;
}