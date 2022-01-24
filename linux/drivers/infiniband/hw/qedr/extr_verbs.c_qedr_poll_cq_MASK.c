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
union rdma_cqe {int /*<<< orphan*/  resp; int /*<<< orphan*/  req; } ;
typedef  scalar_t__ u32 ;
struct qedr_qp {int /*<<< orphan*/  ibqp; } ;
struct qedr_dev {int dummy; } ;
struct qedr_cq {scalar_t__ cq_type; int /*<<< orphan*/  cq_lock; int /*<<< orphan*/  arm_flags; scalar_t__ cq_cons; int /*<<< orphan*/  pbl; union rdma_cqe* latest_cqe; int /*<<< orphan*/  icid; scalar_t__ destroyed; } ;
struct ib_wc {int /*<<< orphan*/ * qp; } ;
struct ib_cq {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*,...) ; 
 scalar_t__ QEDR_CQ_TYPE_GSI ; 
#define  RDMA_CQE_TYPE_INVALID 131 
#define  RDMA_CQE_TYPE_REQUESTER 130 
#define  RDMA_CQE_TYPE_RESPONDER_RQ 129 
#define  RDMA_CQE_TYPE_RESPONDER_SRQ 128 
 int /*<<< orphan*/  FUNC1 (int,char*,union rdma_cqe*) ; 
 struct qedr_qp* FUNC2 (union rdma_cqe*) ; 
 int FUNC3 (union rdma_cqe*) ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_cq*,scalar_t__,int /*<<< orphan*/ ) ; 
 union rdma_cqe* FUNC5 (struct qedr_cq*) ; 
 struct qedr_cq* FUNC6 (struct ib_cq*) ; 
 struct qedr_dev* FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct qedr_cq*,union rdma_cqe*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ib_cq*,int,struct ib_wc*) ; 
 int FUNC11 (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,int,struct ib_wc*,int /*<<< orphan*/ *) ; 
 int FUNC12 (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,int,struct ib_wc*,int /*<<< orphan*/ *,int*) ; 
 int FUNC13 (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,int,struct ib_wc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC17 (struct qedr_cq*,struct qedr_qp*,int /*<<< orphan*/ *,int*) ; 

int FUNC18(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
	struct qedr_dev *dev = FUNC7(ibcq->device);
	struct qedr_cq *cq = FUNC6(ibcq);
	union rdma_cqe *cqe;
	u32 old_cons, new_cons;
	unsigned long flags;
	int update = 0;
	int done = 0;

	if (cq->destroyed) {
		FUNC0(dev,
		       "warning: poll was invoked after destroy for cq %p (icid=%d)\n",
		       cq, cq->icid);
		return 0;
	}

	if (cq->cq_type == QEDR_CQ_TYPE_GSI)
		return FUNC10(ibcq, num_entries, wc);

	FUNC15(&cq->cq_lock, flags);
	cqe = cq->latest_cqe;
	old_cons = FUNC9(&cq->pbl);
	while (num_entries && FUNC8(cq, cqe)) {
		struct qedr_qp *qp;
		int cnt = 0;

		/* prevent speculative reads of any field of CQE */
		FUNC14();

		qp = FUNC2(cqe);
		if (!qp) {
			FUNC1(1, "Error: CQE QP pointer is NULL. CQE=%p\n", cqe);
			break;
		}

		wc->qp = &qp->ibqp;

		switch (FUNC3(cqe)) {
		case RDMA_CQE_TYPE_REQUESTER:
			cnt = FUNC11(dev, qp, cq, num_entries, wc,
					       &cqe->req);
			FUNC17(cq, qp, &cqe->req, &update);
			break;
		case RDMA_CQE_TYPE_RESPONDER_RQ:
			cnt = FUNC12(dev, qp, cq, num_entries, wc,
						&cqe->resp, &update);
			break;
		case RDMA_CQE_TYPE_RESPONDER_SRQ:
			cnt = FUNC13(dev, qp, cq, num_entries,
						    wc, &cqe->resp);
			update = 1;
			break;
		case RDMA_CQE_TYPE_INVALID:
		default:
			FUNC0(dev, "Error: invalid CQE type = %d\n",
			       FUNC3(cqe));
		}
		num_entries -= cnt;
		wc += cnt;
		done += cnt;

		cqe = FUNC5(cq);
	}
	new_cons = FUNC9(&cq->pbl);

	cq->cq_cons += new_cons - old_cons;

	if (update)
		/* doorbell notifies abount latest VALID entry,
		 * but chain already point to the next INVALID one
		 */
		FUNC4(cq, cq->cq_cons - 1, cq->arm_flags);

	FUNC16(&cq->cq_lock, flags);
	return done;
}