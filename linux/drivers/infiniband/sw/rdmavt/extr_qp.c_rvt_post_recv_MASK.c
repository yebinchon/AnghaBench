#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wc ;
typedef  scalar_t__ u32 ;
struct rvt_rwqe {int num_sge; TYPE_2__* sg_list; int /*<<< orphan*/  wr_id; } ;
struct TYPE_8__ {unsigned int max_sge; scalar_t__ size; struct rvt_krwq* kwq; } ;
struct TYPE_5__ {int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  srq; } ;
struct rvt_qp {size_t state; TYPE_4__ r_rq; TYPE_1__ ibqp; } ;
struct rvt_krwq {scalar_t__ head; int /*<<< orphan*/  p_lock; int /*<<< orphan*/  tail; } ;
struct ib_wc {int /*<<< orphan*/  status; int /*<<< orphan*/  wr_id; int /*<<< orphan*/  opcode; TYPE_1__* qp; } ;
struct ib_recv_wr {int num_sge; TYPE_3__* sg_list; int /*<<< orphan*/  wr_id; struct ib_recv_wr* next; } ;
struct ib_qp {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/  lkey; int /*<<< orphan*/  length; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IB_WC_RECV ; 
 int /*<<< orphan*/  IB_WC_WR_FLUSH_ERR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int RVT_FLUSH_RECV ; 
 int RVT_POST_RECV_OK ; 
 int* ib_rvt_state_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct rvt_qp* FUNC2 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_wc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ib_wc*,int) ; 
 struct rvt_rwqe* FUNC5 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(struct ib_qp *ibqp, const struct ib_recv_wr *wr,
		  const struct ib_recv_wr **bad_wr)
{
	struct rvt_qp *qp = FUNC2(ibqp);
	struct rvt_krwq *wq = qp->r_rq.kwq;
	unsigned long flags;
	int qp_err_flush = (ib_rvt_state_ops[qp->state] & RVT_FLUSH_RECV) &&
				!qp->ibqp.srq;

	/* Check that state is OK to post receive. */
	if (!(ib_rvt_state_ops[qp->state] & RVT_POST_RECV_OK) || !wq) {
		*bad_wr = wr;
		return -EINVAL;
	}

	for (; wr; wr = wr->next) {
		struct rvt_rwqe *wqe;
		u32 next;
		int i;

		if ((unsigned)wr->num_sge > qp->r_rq.max_sge) {
			*bad_wr = wr;
			return -EINVAL;
		}

		FUNC7(&qp->r_rq.kwq->p_lock, flags);
		next = wq->head + 1;
		if (next >= qp->r_rq.size)
			next = 0;
		if (next == FUNC0(wq->tail)) {
			FUNC8(&qp->r_rq.kwq->p_lock, flags);
			*bad_wr = wr;
			return -ENOMEM;
		}
		if (FUNC9(qp_err_flush)) {
			struct ib_wc wc;

			FUNC3(&wc, 0, sizeof(wc));
			wc.qp = &qp->ibqp;
			wc.opcode = IB_WC_RECV;
			wc.wr_id = wr->wr_id;
			wc.status = IB_WC_WR_FLUSH_ERR;
			FUNC4(FUNC1(qp->ibqp.recv_cq), &wc, 1);
		} else {
			wqe = FUNC5(&qp->r_rq, wq->head);
			wqe->wr_id = wr->wr_id;
			wqe->num_sge = wr->num_sge;
			for (i = 0; i < wr->num_sge; i++) {
				wqe->sg_list[i].addr = wr->sg_list[i].addr;
				wqe->sg_list[i].length = wr->sg_list[i].length;
				wqe->sg_list[i].lkey = wr->sg_list[i].lkey;
			}
			/*
			 * Make sure queue entry is written
			 * before the head index.
			 */
			FUNC6(&wq->head, next);
		}
		FUNC8(&qp->r_rq.kwq->p_lock, flags);
	}
	return 0;
}