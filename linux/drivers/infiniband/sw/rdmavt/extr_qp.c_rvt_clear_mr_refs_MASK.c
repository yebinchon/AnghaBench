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
struct rvt_swqe {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  device; } ;
struct rvt_qp {scalar_t__ s_last; scalar_t__ s_head; scalar_t__ s_size; struct rvt_ack_entry* s_ack_queue; int /*<<< orphan*/ * s_rdma_mr; int /*<<< orphan*/  r_sge; int /*<<< orphan*/  s_rdma_read_sge; int /*<<< orphan*/  r_aflags; TYPE_1__ ibqp; } ;
struct rvt_dev_info {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * mr; } ;
struct rvt_ack_entry {TYPE_2__ rdma_sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  RVT_R_REWIND_SGE ; 
 struct rvt_dev_info* FUNC0 (int /*<<< orphan*/ ) ; 
 struct rvt_swqe* FUNC1 (struct rvt_qp*,scalar_t__) ; 
 unsigned int FUNC2 (struct rvt_dev_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct rvt_qp*,struct rvt_swqe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct rvt_qp *qp, int clr_sends)
{
	unsigned n;
	struct rvt_dev_info *rdi = FUNC0(qp->ibqp.device);

	if (FUNC7(RVT_R_REWIND_SGE, &qp->r_aflags))
		FUNC5(&qp->s_rdma_read_sge);

	FUNC5(&qp->r_sge);

	if (clr_sends) {
		while (qp->s_last != qp->s_head) {
			struct rvt_swqe *wqe = FUNC1(qp, qp->s_last);

			FUNC4(qp, wqe);
			if (++qp->s_last >= qp->s_size)
				qp->s_last = 0;
			FUNC6(); /* see qp_set_savail */
		}
		if (qp->s_rdma_mr) {
			FUNC3(qp->s_rdma_mr);
			qp->s_rdma_mr = NULL;
		}
	}

	for (n = 0; qp->s_ack_queue && n < FUNC2(rdi); n++) {
		struct rvt_ack_entry *e = &qp->s_ack_queue[n];

		if (e->rdma_sge.mr) {
			FUNC3(e->rdma_sge.mr);
			e->rdma_sge.mr = NULL;
		}
	}
}