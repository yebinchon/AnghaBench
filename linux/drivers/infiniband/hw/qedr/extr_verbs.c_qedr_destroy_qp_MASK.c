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
struct qedr_qp {scalar_t__ qp_type; scalar_t__ state; int /*<<< orphan*/  qp_id; int /*<<< orphan*/  refcnt; TYPE_1__* ep; struct qedr_dev* dev; } ;
struct qedr_dev {int /*<<< orphan*/  qps; int /*<<< orphan*/  ibdev; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int /*<<< orphan*/  qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {scalar_t__ during_connect; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*) ; 
 int /*<<< orphan*/  IB_QPS_ERR ; 
 scalar_t__ IB_QPT_GSI ; 
 int IB_QP_STATE ; 
 int /*<<< orphan*/  QEDR_MSG_QP ; 
 scalar_t__ QED_ROCE_QP_STATE_ERR ; 
 scalar_t__ QED_ROCE_QP_STATE_INIT ; 
 scalar_t__ QED_ROCE_QP_STATE_RESET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 struct qedr_qp* FUNC3 (struct ib_qp*) ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_qp*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct qedr_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct qedr_dev*,struct qedr_qp*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC8 (struct ib_qp*,struct ib_qp_attr*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC12(struct ib_qp *ibqp, struct ib_udata *udata)
{
	struct qedr_qp *qp = FUNC3(ibqp);
	struct qedr_dev *dev = qp->dev;
	struct ib_qp_attr attr;
	int attr_mask = 0;

	FUNC0(dev, QEDR_MSG_QP, "destroy qp: destroying %p, qp type=%d\n",
		 qp, qp->qp_type);

	if (FUNC10(&dev->ibdev, 1)) {
		if ((qp->state != QED_ROCE_QP_STATE_RESET) &&
		    (qp->state != QED_ROCE_QP_STATE_ERR) &&
		    (qp->state != QED_ROCE_QP_STATE_INIT)) {

			attr.qp_state = IB_QPS_ERR;
			attr_mask |= IB_QP_STATE;

			/* Change the QP state to ERROR */
			FUNC8(ibqp, &attr, attr_mask, NULL);
		}
	} else {
		/* Wait for the connect/accept to complete */
		if (qp->ep) {
			int wait_count = 1;

			while (qp->ep->during_connect) {
				FUNC0(dev, QEDR_MSG_QP,
					 "Still in during connect/accept\n");

				FUNC5(100);
				if (wait_count++ > 200) {
					FUNC1(dev,
						  "during connect timeout\n");
					break;
				}
			}
		}
	}

	if (qp->qp_type == IB_QPT_GSI)
		FUNC6(dev);

	FUNC7(dev, qp, udata);

	if (FUNC2(&qp->refcnt) &&
	    FUNC9(&dev->ibdev, 1)) {
		FUNC11(&dev->qps, qp->qp_id);
		FUNC4(qp);
	}
	return 0;
}