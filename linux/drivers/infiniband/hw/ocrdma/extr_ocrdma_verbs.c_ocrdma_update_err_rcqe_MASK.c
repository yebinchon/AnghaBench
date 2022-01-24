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
struct TYPE_2__ {size_t tail; } ;
struct ocrdma_qp {TYPE_1__ rq; int /*<<< orphan*/ * rqe_wr_id_tbl; } ;
struct ocrdma_cqe {int dummy; } ;
struct ib_wc {int /*<<< orphan*/  wr_id; int /*<<< orphan*/  opcode; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_WC_RECV ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (struct ib_wc*,struct ocrdma_cqe*,struct ocrdma_qp*,int) ; 

__attribute__((used)) static int FUNC2(struct ib_wc *ibwc, struct ocrdma_cqe *cqe,
				  struct ocrdma_qp *qp, int status)
{
	ibwc->opcode = IB_WC_RECV;
	ibwc->wr_id = qp->rqe_wr_id_tbl[qp->rq.tail];
	FUNC0(&qp->rq);

	return FUNC1(ibwc, cqe, qp, status);
}