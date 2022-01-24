#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct t4_cqe {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  qid; } ;
struct TYPE_6__ {TYPE_2__ sq; } ;
struct TYPE_4__ {int /*<<< orphan*/  rcq; int /*<<< orphan*/  scq; } ;
struct c4iw_qp {int /*<<< orphan*/  ibqp; TYPE_3__ wq; TYPE_1__ attr; } ;
struct c4iw_dev {int /*<<< orphan*/  qps; } ;
struct c4iw_cq {int /*<<< orphan*/  wait; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC1 (struct t4_cqe*) ; 
 int FUNC2 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC3 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC4 (struct t4_cqe*) ; 
 int /*<<< orphan*/  FUNC5 (struct t4_cqe*) ; 
 scalar_t__ FW_RI_RDMA_WRITE ; 
 int /*<<< orphan*/  IB_EVENT_DEVICE_FATAL ; 
 int /*<<< orphan*/  IB_EVENT_QP_ACCESS_ERR ; 
 int /*<<< orphan*/  IB_EVENT_QP_FATAL ; 
 int /*<<< orphan*/  IB_EVENT_QP_REQ_ERR ; 
 scalar_t__ FUNC6 (struct t4_cqe*) ; 
 scalar_t__ FUNC7 (struct t4_cqe*) ; 
#define  T4_ERR_ACCESS 155 
#define  T4_ERR_BOUND 154 
#define  T4_ERR_CRC 153 
#define  T4_ERR_DDP_QUEUE_NUM 152 
#define  T4_ERR_DDP_VERSION 151 
#define  T4_ERR_ECC 150 
#define  T4_ERR_ECC_PSTAG 149 
#define  T4_ERR_INTERNAL_ERR 148 
#define  T4_ERR_INVALIDATE_MR_WITH_MW_BOUND 147 
#define  T4_ERR_INVALIDATE_SHARED_MR 146 
#define  T4_ERR_IRD_OVERFLOW 145 
#define  T4_ERR_MARKER 144 
#define  T4_ERR_MO 143 
#define  T4_ERR_MSN 142 
#define  T4_ERR_MSN_GAP 141 
#define  T4_ERR_MSN_RANGE 140 
#define  T4_ERR_OPCODE 139 
#define  T4_ERR_OUT_OF_RQE 138 
#define  T4_ERR_PBL_ADDR_BOUND 137 
#define  T4_ERR_PDID 136 
#define  T4_ERR_PDU_LEN_ERR 135 
#define  T4_ERR_QPID 134 
#define  T4_ERR_RDMA_VERSION 133 
#define  T4_ERR_RQE_ADDR_BOUND 132 
#define  T4_ERR_STAG 131 
#define  T4_ERR_SUCCESS 130 
#define  T4_ERR_TBIT 129 
#define  T4_ERR_WRAP 128 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct c4iw_cq* FUNC12 (struct c4iw_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct c4iw_dev*,struct c4iw_cq*,struct c4iw_qp*,struct t4_cqe*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 struct c4iw_qp* FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 

void FUNC19(struct c4iw_dev *dev, struct t4_cqe *err_cqe)
{
	struct c4iw_cq *chp;
	struct c4iw_qp *qhp;
	u32 cqid;

	FUNC17(&dev->qps);
	qhp = FUNC16(&dev->qps, FUNC1(err_cqe));
	if (!qhp) {
		FUNC14("BAD AE qpid 0x%x opcode %d status 0x%x type %d wrid.hi 0x%x wrid.lo 0x%x\n",
		       FUNC1(err_cqe),
		       FUNC0(err_cqe), FUNC2(err_cqe),
		       FUNC3(err_cqe), FUNC4(err_cqe),
		       FUNC5(err_cqe));
		FUNC18(&dev->qps);
		goto out;
	}

	if (FUNC7(err_cqe))
		cqid = qhp->attr.scq;
	else
		cqid = qhp->attr.rcq;
	chp = FUNC12(dev, cqid);
	if (!chp) {
		FUNC14("BAD AE cqid 0x%x qpid 0x%x opcode %d status 0x%x type %d wrid.hi 0x%x wrid.lo 0x%x\n",
		       cqid, FUNC1(err_cqe),
		       FUNC0(err_cqe), FUNC2(err_cqe),
		       FUNC3(err_cqe), FUNC4(err_cqe),
		       FUNC5(err_cqe));
		FUNC18(&dev->qps);
		goto out;
	}

	FUNC10(&qhp->ibqp);
	FUNC9(&chp->refcnt);
	FUNC18(&dev->qps);

	/* Bad incoming write */
	if (FUNC6(err_cqe) &&
	    (FUNC0(err_cqe) == FW_RI_RDMA_WRITE)) {
		FUNC13(dev, chp, qhp, err_cqe, IB_EVENT_QP_REQ_ERR);
		goto done;
	}

	switch (FUNC2(err_cqe)) {

	/* Completion Events */
	case T4_ERR_SUCCESS:
		FUNC14("AE with status 0!\n");
		break;

	case T4_ERR_STAG:
	case T4_ERR_PDID:
	case T4_ERR_QPID:
	case T4_ERR_ACCESS:
	case T4_ERR_WRAP:
	case T4_ERR_BOUND:
	case T4_ERR_INVALIDATE_SHARED_MR:
	case T4_ERR_INVALIDATE_MR_WITH_MW_BOUND:
		FUNC13(dev, chp, qhp, err_cqe, IB_EVENT_QP_ACCESS_ERR);
		break;

	/* Device Fatal Errors */
	case T4_ERR_ECC:
	case T4_ERR_ECC_PSTAG:
	case T4_ERR_INTERNAL_ERR:
		FUNC13(dev, chp, qhp, err_cqe, IB_EVENT_DEVICE_FATAL);
		break;

	/* QP Fatal Errors */
	case T4_ERR_OUT_OF_RQE:
	case T4_ERR_PBL_ADDR_BOUND:
	case T4_ERR_CRC:
	case T4_ERR_MARKER:
	case T4_ERR_PDU_LEN_ERR:
	case T4_ERR_DDP_VERSION:
	case T4_ERR_RDMA_VERSION:
	case T4_ERR_OPCODE:
	case T4_ERR_DDP_QUEUE_NUM:
	case T4_ERR_MSN:
	case T4_ERR_TBIT:
	case T4_ERR_MO:
	case T4_ERR_MSN_GAP:
	case T4_ERR_MSN_RANGE:
	case T4_ERR_RQE_ADDR_BOUND:
	case T4_ERR_IRD_OVERFLOW:
		FUNC13(dev, chp, qhp, err_cqe, IB_EVENT_QP_FATAL);
		break;

	default:
		FUNC14("Unknown T4 status 0x%x QPID 0x%x\n",
		       FUNC2(err_cqe), qhp->wq.sq.qid);
		FUNC13(dev, chp, qhp, err_cqe, IB_EVENT_QP_FATAL);
		break;
	}
done:
	if (FUNC8(&chp->refcnt))
		FUNC15(&chp->wait);
	FUNC11(&qhp->ibqp);
out:
	return;
}