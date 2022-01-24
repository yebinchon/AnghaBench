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
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_8__ {int /*<<< orphan*/  gsi_cons; } ;
struct qedr_qp {int /*<<< orphan*/  q_lock; TYPE_4__ sq; } ;
struct qedr_dev {TYPE_1__* pdev; int /*<<< orphan*/  gsi_rqcq; struct qedr_cq* gsi_sqcq; struct qedr_qp* gsi_qp; } ;
struct TYPE_7__ {int /*<<< orphan*/  cq_context; int /*<<< orphan*/  (* comp_handler ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;
struct qedr_cq {TYPE_3__ ibcq; } ;
struct TYPE_6__ {int /*<<< orphan*/  baddr; int /*<<< orphan*/  vaddr; int /*<<< orphan*/  len; } ;
struct qed_roce_ll2_packet {TYPE_2__ header; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,struct qedr_cq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  QEDR_MSG_GSI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qed_roce_ll2_packet*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void *cxt, u8 connection_handle,
					void *cookie,
					dma_addr_t first_frag_addr,
					bool b_last_fragment,
					bool b_last_packet)
{
	struct qedr_dev *dev = (struct qedr_dev *)cxt;
	struct qed_roce_ll2_packet *pkt = cookie;
	struct qedr_cq *cq = dev->gsi_sqcq;
	struct qedr_qp *qp = dev->gsi_qp;
	unsigned long flags;

	FUNC0(dev, QEDR_MSG_GSI,
		 "LL2 TX CB: gsi_sqcq=%p, gsi_rqcq=%p, gsi_cons=%d, ibcq_comp=%s\n",
		 dev->gsi_sqcq, dev->gsi_rqcq, qp->sq.gsi_cons,
		 cq->ibcq.comp_handler ? "Yes" : "No");

	FUNC1(&dev->pdev->dev, pkt->header.len, pkt->header.vaddr,
			  pkt->header.baddr);
	FUNC2(pkt);

	FUNC4(&qp->q_lock, flags);
	FUNC3(&qp->sq);
	FUNC5(&qp->q_lock, flags);

	if (cq->ibcq.comp_handler)
		(*cq->ibcq.comp_handler) (&cq->ibcq, cq->ibcq.cq_context);
}