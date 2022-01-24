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
typedef  scalar_t__ u32 ;
struct rvt_swqe {int dummy; } ;
struct rvt_qp {scalar_t__ s_last; scalar_t__ s_head; scalar_t__ s_size; scalar_t__ s_rdma_mr; } ;

/* Variables and functions */
 struct rvt_swqe* FUNC0 (struct rvt_qp*,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct rvt_swqe*,scalar_t__) ; 

__attribute__((used)) static bool FUNC3(struct rvt_qp *qp, u32 lkey)
{
	u32 s_last = qp->s_last;

	while (s_last != qp->s_head) {
		struct rvt_swqe *wqe = FUNC0(qp, s_last);

		if (FUNC2(wqe, lkey))
			return true;

		if (++s_last >= qp->s_size)
			s_last = 0;
	}
	if (qp->s_rdma_mr)
		if (FUNC1(qp->s_rdma_mr, lkey))
			return true;
	return false;
}