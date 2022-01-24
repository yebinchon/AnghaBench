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
struct pvrdma_qp {int /*<<< orphan*/  ibqp; } ;
struct pvrdma_dev {scalar_t__* qp_tbl; TYPE_1__* pdev; } ;
struct pvrdma_cqe {int qp; int /*<<< orphan*/  network_hdr_type; int /*<<< orphan*/  vendor_err; int /*<<< orphan*/  port_num; int /*<<< orphan*/  dlid_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  slid; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  wc_flags; int /*<<< orphan*/  src_qp; int /*<<< orphan*/  imm_data; int /*<<< orphan*/  byte_len; int /*<<< orphan*/  wr_id; int /*<<< orphan*/  status; int /*<<< orphan*/  opcode; } ;
struct TYPE_9__ {int /*<<< orphan*/  cqe; int /*<<< orphan*/  device; } ;
struct pvrdma_cq {int cq_handle; TYPE_4__ ibcq; TYPE_3__* ring_state; } ;
struct TYPE_7__ {int /*<<< orphan*/  imm_data; } ;
struct ib_wc {int /*<<< orphan*/  network_hdr_type; int /*<<< orphan*/  vendor_err; int /*<<< orphan*/  port_num; int /*<<< orphan*/  dlid_path_bits; int /*<<< orphan*/  sl; int /*<<< orphan*/  slid; int /*<<< orphan*/  pkey_index; int /*<<< orphan*/  wc_flags; int /*<<< orphan*/  src_qp; TYPE_2__ ex; int /*<<< orphan*/  byte_len; int /*<<< orphan*/ * qp; int /*<<< orphan*/  wr_id; int /*<<< orphan*/  status; int /*<<< orphan*/  opcode; } ;
struct TYPE_10__ {int /*<<< orphan*/  cons_head; } ;
struct TYPE_8__ {TYPE_5__ rx; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int PVRDMA_INVALID_IDX ; 
 int PVRDMA_UAR_CQ_POLL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct pvrdma_cqe* FUNC1 (struct pvrdma_cq*,unsigned int) ; 
 int FUNC2 (TYPE_5__*,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct pvrdma_dev*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 struct pvrdma_dev* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct pvrdma_cq *cq, struct pvrdma_qp **cur_qp,
			   struct ib_wc *wc)
{
	struct pvrdma_dev *dev = FUNC9(cq->ibcq.device);
	int has_data;
	unsigned int head;
	bool tried = false;
	struct pvrdma_cqe *cqe;

retry:
	has_data = FUNC2(&cq->ring_state->rx,
					    cq->ibcq.cqe, &head);
	if (has_data == 0) {
		if (tried)
			return -EAGAIN;

		FUNC7(dev, cq->cq_handle | PVRDMA_UAR_CQ_POLL);

		tried = true;
		goto retry;
	} else if (has_data == PVRDMA_INVALID_IDX) {
		FUNC0(&dev->pdev->dev, "CQ ring state invalid\n");
		return -EAGAIN;
	}

	cqe = FUNC1(cq, head);

	/* Ensure cqe is valid. */
	FUNC8();
	if (dev->qp_tbl[cqe->qp & 0xffff])
		*cur_qp = (struct pvrdma_qp *)dev->qp_tbl[cqe->qp & 0xffff];
	else
		return -EAGAIN;

	wc->opcode = FUNC5(cqe->opcode);
	wc->status = FUNC6(cqe->status);
	wc->wr_id = cqe->wr_id;
	wc->qp = &(*cur_qp)->ibqp;
	wc->byte_len = cqe->byte_len;
	wc->ex.imm_data = cqe->imm_data;
	wc->src_qp = cqe->src_qp;
	wc->wc_flags = FUNC4(cqe->wc_flags);
	wc->pkey_index = cqe->pkey_index;
	wc->slid = cqe->slid;
	wc->sl = cqe->sl;
	wc->dlid_path_bits = cqe->dlid_path_bits;
	wc->port_num = cqe->port_num;
	wc->vendor_err = cqe->vendor_err;
	wc->network_hdr_type = cqe->network_hdr_type;

	/* Update shared ring state */
	FUNC3(&cq->ring_state->rx.cons_head, cq->ibcq.cqe);

	return 0;
}