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
typedef  scalar_t__ u64 ;
struct rvt_qp {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rvt_qp*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct rvt_qp*,scalar_t__*) ; 

bool FUNC2(struct rvt_qp *qp, u64 *data)
{
	bool ret;

	ret = FUNC0(qp, *data);
	*data = 0;
	/*
	 * If tid_rdma_conn_reply() returns error, set *data as 0 to indicate
	 * TID RDMA could not be enabled. This will result in TID RDMA being
	 * disabled at the requester too.
	 */
	if (ret)
		(void)FUNC1(qp, data);
	return ret;
}