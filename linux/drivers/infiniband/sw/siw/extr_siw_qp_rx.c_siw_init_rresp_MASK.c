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
typedef  void* uint64_t ;
typedef  scalar_t__ uint32_t ;
struct siw_sqe {int num_sge; int /*<<< orphan*/  flags; scalar_t__ rkey; void* raddr; TYPE_3__* sge; int /*<<< orphan*/  opcode; } ;
struct siw_wqe {scalar_t__ wr_status; struct siw_sqe sqe; int /*<<< orphan*/ ** mem; scalar_t__ processed; } ;
struct TYPE_5__ {int /*<<< orphan*/  ddp_msn; int /*<<< orphan*/  sink_stag; int /*<<< orphan*/  source_stag; int /*<<< orphan*/  read_size; int /*<<< orphan*/  source_to; int /*<<< orphan*/  sink_to; } ;
struct TYPE_6__ {TYPE_1__ rreq; } ;
struct siw_rx_stream {scalar_t__* ddp_msn; TYPE_2__ hdr; } ;
struct TYPE_8__ {int irq_size; } ;
struct siw_qp {int irq_put; int /*<<< orphan*/  sq_lock; TYPE_4__ attrs; } ;
struct TYPE_7__ {scalar_t__ length; scalar_t__ lkey; void* laddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  DDP_ECODE_UT_INVALID_MSN_RANGE ; 
 int /*<<< orphan*/  DDP_ETYPE_UNTAGGED_BUF ; 
 int EPROTO ; 
 int /*<<< orphan*/  RDMAP_ECODE_CATASTROPHIC_STREAM ; 
 int /*<<< orphan*/  RDMAP_ETYPE_REMOTE_OPERATION ; 
 size_t RDMAP_UNTAGGED_QN_RDMA_READ ; 
 int /*<<< orphan*/  SIW_OP_READ_RESPONSE ; 
 int /*<<< orphan*/  SIW_WQE_VALID ; 
 scalar_t__ SIW_WR_IDLE ; 
 scalar_t__ SIW_WR_QUEUED ; 
 int /*<<< orphan*/  TERM_ERROR_LAYER_DDP ; 
 int /*<<< orphan*/  TERM_ERROR_LAYER_RDMAP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 struct siw_sqe* FUNC2 (struct siw_qp*) ; 
 scalar_t__ FUNC3 (struct siw_sqe*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct siw_qp*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct siw_qp*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct siw_wqe* FUNC11 (struct siw_qp*) ; 
 scalar_t__ FUNC12 (int) ; 

__attribute__((used)) static int FUNC13(struct siw_qp *qp, struct siw_rx_stream *srx)
{
	struct siw_wqe *tx_work = FUNC11(qp);
	struct siw_sqe *resp;

	uint64_t raddr = FUNC1(srx->hdr.rreq.sink_to),
		 laddr = FUNC1(srx->hdr.rreq.source_to);
	uint32_t length = FUNC0(srx->hdr.rreq.read_size),
		 lkey = FUNC0(srx->hdr.rreq.source_stag),
		 rkey = FUNC0(srx->hdr.rreq.sink_stag),
		 msn = FUNC0(srx->hdr.rreq.ddp_msn);

	int run_sq = 1, rv = 0;
	unsigned long flags;

	if (FUNC12(msn != srx->ddp_msn[RDMAP_UNTAGGED_QN_RDMA_READ])) {
		FUNC6(qp, TERM_ERROR_LAYER_DDP,
				   DDP_ETYPE_UNTAGGED_BUF,
				   DDP_ECODE_UT_INVALID_MSN_RANGE, 0);
		return -EPROTO;
	}
	FUNC9(&qp->sq_lock, flags);

	if (tx_work->wr_status == SIW_WR_IDLE) {
		/*
		 * immediately schedule READ response w/o
		 * consuming IRQ entry: IRQ must be empty.
		 */
		tx_work->processed = 0;
		tx_work->mem[0] = NULL;
		tx_work->wr_status = SIW_WR_QUEUED;
		resp = &tx_work->sqe;
	} else {
		resp = FUNC2(qp);
		run_sq = 0;
	}
	if (FUNC3(resp)) {
		resp->opcode = SIW_OP_READ_RESPONSE;

		resp->sge[0].length = length;
		resp->sge[0].laddr = laddr;
		resp->sge[0].lkey = lkey;

		/* Keep aside message sequence number for potential
		 * error reporting during Read Response generation.
		 */
		resp->sge[1].length = msn;

		resp->raddr = raddr;
		resp->rkey = rkey;
		resp->num_sge = length ? 1 : 0;

		/* RRESP now valid as current TX wqe or placed into IRQ */
		FUNC8(resp->flags, SIW_WQE_VALID);
	} else {
		FUNC4("siw: [QP %u]: irq %d exceeded %d\n", FUNC5(qp),
			qp->irq_put % qp->attrs.irq_size, qp->attrs.irq_size);

		FUNC6(qp, TERM_ERROR_LAYER_RDMAP,
				   RDMAP_ETYPE_REMOTE_OPERATION,
				   RDMAP_ECODE_CATASTROPHIC_STREAM, 0);
		rv = -EPROTO;
	}

	FUNC10(&qp->sq_lock, flags);

	if (run_sq)
		rv = FUNC7(qp);

	return rv;
}