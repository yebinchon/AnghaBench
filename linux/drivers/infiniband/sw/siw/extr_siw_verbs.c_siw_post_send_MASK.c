#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u32 ;
struct siw_wqe {scalar_t__ wr_status; } ;
struct siw_sqe {int flags; int num_sge; uintptr_t base_mr; int access; scalar_t__ id; int /*<<< orphan*/  opcode; int /*<<< orphan*/  rkey; int /*<<< orphan*/  raddr; int /*<<< orphan*/ * sge; } ;
struct TYPE_6__ {int in_syscall; int /*<<< orphan*/  tx_suspend; } ;
struct TYPE_7__ {int state; size_t sq_size; scalar_t__ sq_max_sges; int flags; } ;
struct siw_qp {size_t sq_put; int /*<<< orphan*/  state_lock; TYPE_1__ tx_ctx; scalar_t__ kernel_verbs; int /*<<< orphan*/  sq_lock; TYPE_2__ attrs; struct siw_sqe* sendq; } ;
struct TYPE_8__ {int /*<<< orphan*/  invalidate_rkey; } ;
struct ib_send_wr {scalar_t__ num_sge; int send_flags; int opcode; struct ib_send_wr* next; TYPE_3__ ex; int /*<<< orphan*/  sg_list; scalar_t__ wr_id; } ;
struct ib_qp {int dummy; } ;
struct TYPE_10__ {int /*<<< orphan*/  rkey; int /*<<< orphan*/  remote_addr; } ;
struct TYPE_9__ {int access; int /*<<< orphan*/  key; scalar_t__ mr; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int IB_SEND_FENCE ; 
 int IB_SEND_INLINE ; 
 int IB_SEND_SIGNALED ; 
 int IB_SEND_SOLICITED ; 
#define  IB_WR_LOCAL_INV 134 
#define  IB_WR_RDMA_READ 133 
#define  IB_WR_RDMA_READ_WITH_INV 132 
#define  IB_WR_RDMA_WRITE 131 
#define  IB_WR_REG_MR 130 
#define  IB_WR_SEND 129 
#define  IB_WR_SEND_WITH_INV 128 
 int IWARP_ACCESS_MASK ; 
 int /*<<< orphan*/  SIW_OP_INVAL_STAG ; 
 int /*<<< orphan*/  SIW_OP_READ ; 
 int /*<<< orphan*/  SIW_OP_READ_LOCAL_INV ; 
 int /*<<< orphan*/  SIW_OP_REG_MR ; 
 int /*<<< orphan*/  SIW_OP_SEND ; 
 int /*<<< orphan*/  SIW_OP_SEND_REMOTE_INV ; 
 int /*<<< orphan*/  SIW_OP_WRITE ; 
 scalar_t__ SIW_QP_STATE_RTS ; 
 int SIW_SIGNAL_ALL_WR ; 
 int SIW_WQE_INLINE ; 
 int SIW_WQE_READ_FENCE ; 
 int SIW_WQE_SIGNALLED ; 
 int SIW_WQE_SOLICITED ; 
 int SIW_WQE_VALID ; 
 scalar_t__ SIW_WR_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC1 (struct ib_send_wr const*) ; 
 TYPE_4__* FUNC2 (struct ib_send_wr const*) ; 
 int FUNC3 (struct siw_qp*) ; 
 int FUNC4 (struct ib_send_wr const*,struct siw_sqe*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (struct siw_qp*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct siw_qp*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct siw_qp*) ; 
 int FUNC9 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 struct siw_qp* FUNC13 (struct ib_qp*) ; 
 struct siw_wqe* FUNC14 (struct siw_qp*) ; 
 scalar_t__ FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

int FUNC17(struct ib_qp *base_qp, const struct ib_send_wr *wr,
		  const struct ib_send_wr **bad_wr)
{
	struct siw_qp *qp = FUNC13(base_qp);
	struct siw_wqe *wqe = FUNC14(qp);

	unsigned long flags;
	int rv = 0;

	/*
	 * Try to acquire QP state lock. Must be non-blocking
	 * to accommodate kernel clients needs.
	 */
	if (!FUNC0(&qp->state_lock)) {
		*bad_wr = wr;
		FUNC6(qp, "QP locked, state %d\n", qp->attrs.state);
		return -ENOTCONN;
	}
	if (FUNC15(qp->attrs.state != SIW_QP_STATE_RTS)) {
		FUNC16(&qp->state_lock);
		*bad_wr = wr;
		FUNC6(qp, "QP out of state %d\n", qp->attrs.state);
		return -ENOTCONN;
	}
	if (wr && !qp->kernel_verbs) {
		FUNC6(qp, "wr must be empty for user mapped sq\n");
		FUNC16(&qp->state_lock);
		*bad_wr = wr;
		return -EINVAL;
	}
	FUNC11(&qp->sq_lock, flags);

	while (wr) {
		u32 idx = qp->sq_put % qp->attrs.sq_size;
		struct siw_sqe *sqe = &qp->sendq[idx];

		if (sqe->flags) {
			FUNC6(qp, "sq full\n");
			rv = -ENOMEM;
			break;
		}
		if (wr->num_sge > qp->attrs.sq_max_sges) {
			FUNC6(qp, "too many sge's: %d\n", wr->num_sge);
			rv = -EINVAL;
			break;
		}
		sqe->id = wr->wr_id;

		if ((wr->send_flags & IB_SEND_SIGNALED) ||
		    (qp->attrs.flags & SIW_SIGNAL_ALL_WR))
			sqe->flags |= SIW_WQE_SIGNALLED;

		if (wr->send_flags & IB_SEND_FENCE)
			sqe->flags |= SIW_WQE_READ_FENCE;

		switch (wr->opcode) {
		case IB_WR_SEND:
		case IB_WR_SEND_WITH_INV:
			if (wr->send_flags & IB_SEND_SOLICITED)
				sqe->flags |= SIW_WQE_SOLICITED;

			if (!(wr->send_flags & IB_SEND_INLINE)) {
				FUNC5(wr->sg_list, sqe->sge,
					     wr->num_sge);
				sqe->num_sge = wr->num_sge;
			} else {
				rv = FUNC4(wr, sqe);
				if (rv <= 0) {
					rv = -EINVAL;
					break;
				}
				sqe->flags |= SIW_WQE_INLINE;
				sqe->num_sge = 1;
			}
			if (wr->opcode == IB_WR_SEND)
				sqe->opcode = SIW_OP_SEND;
			else {
				sqe->opcode = SIW_OP_SEND_REMOTE_INV;
				sqe->rkey = wr->ex.invalidate_rkey;
			}
			break;

		case IB_WR_RDMA_READ_WITH_INV:
		case IB_WR_RDMA_READ:
			/*
			 * iWarp restricts RREAD sink to SGL containing
			 * 1 SGE only. we could relax to SGL with multiple
			 * elements referring the SAME ltag or even sending
			 * a private per-rreq tag referring to a checked
			 * local sgl with MULTIPLE ltag's.
			 */
			if (FUNC15(wr->num_sge != 1)) {
				rv = -EINVAL;
				break;
			}
			FUNC5(wr->sg_list, &sqe->sge[0], 1);
			/*
			 * NOTE: zero length RREAD is allowed!
			 */
			sqe->raddr = FUNC1(wr)->remote_addr;
			sqe->rkey = FUNC1(wr)->rkey;
			sqe->num_sge = 1;

			if (wr->opcode == IB_WR_RDMA_READ)
				sqe->opcode = SIW_OP_READ;
			else
				sqe->opcode = SIW_OP_READ_LOCAL_INV;
			break;

		case IB_WR_RDMA_WRITE:
			if (!(wr->send_flags & IB_SEND_INLINE)) {
				FUNC5(wr->sg_list, &sqe->sge[0],
					     wr->num_sge);
				sqe->num_sge = wr->num_sge;
			} else {
				rv = FUNC4(wr, sqe);
				if (FUNC15(rv < 0)) {
					rv = -EINVAL;
					break;
				}
				sqe->flags |= SIW_WQE_INLINE;
				sqe->num_sge = 1;
			}
			sqe->raddr = FUNC1(wr)->remote_addr;
			sqe->rkey = FUNC1(wr)->rkey;
			sqe->opcode = SIW_OP_WRITE;
			break;

		case IB_WR_REG_MR:
			sqe->base_mr = (uintptr_t)FUNC2(wr)->mr;
			sqe->rkey = FUNC2(wr)->key;
			sqe->access = FUNC2(wr)->access & IWARP_ACCESS_MASK;
			sqe->opcode = SIW_OP_REG_MR;
			break;

		case IB_WR_LOCAL_INV:
			sqe->rkey = wr->ex.invalidate_rkey;
			sqe->opcode = SIW_OP_INVAL_STAG;
			break;

		default:
			FUNC6(qp, "ib wr type %d unsupported\n",
				   wr->opcode);
			rv = -EINVAL;
			break;
		}
		FUNC6(qp, "opcode %d, flags 0x%x, wr_id 0x%pK\n",
			   sqe->opcode, sqe->flags,
			   (void *)(uintptr_t)sqe->id);

		if (FUNC15(rv < 0))
			break;

		/* make SQE only valid after completely written */
		FUNC10();
		sqe->flags |= SIW_WQE_VALID;

		qp->sq_put++;
		wr = wr->next;
	}

	/*
	 * Send directly if SQ processing is not in progress.
	 * Eventual immediate errors (rv < 0) do not affect the involved
	 * RI resources (Verbs, 8.3.1) and thus do not prevent from SQ
	 * processing, if new work is already pending. But rv must be passed
	 * to caller.
	 */
	if (wqe->wr_status != SIW_WR_IDLE) {
		FUNC12(&qp->sq_lock, flags);
		goto skip_direct_sending;
	}
	rv = FUNC3(qp);
	FUNC12(&qp->sq_lock, flags);

	if (rv <= 0)
		goto skip_direct_sending;

	if (qp->kernel_verbs) {
		rv = FUNC9(qp);
	} else {
		qp->tx_ctx.in_syscall = 1;

		if (FUNC8(qp) != 0 && !(qp->tx_ctx.tx_suspend))
			FUNC7(qp, 0);

		qp->tx_ctx.in_syscall = 0;
	}
skip_direct_sending:

	FUNC16(&qp->state_lock);

	if (rv >= 0)
		return 0;
	/*
	 * Immediate error
	 */
	FUNC6(qp, "error %d\n", rv);

	*bad_wr = wr;
	return rv;
}