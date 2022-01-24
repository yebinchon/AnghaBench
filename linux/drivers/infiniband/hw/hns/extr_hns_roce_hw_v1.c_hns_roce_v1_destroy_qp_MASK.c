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
struct ib_udata {int dummy; } ;
struct ib_qp {int /*<<< orphan*/  device; } ;
struct TYPE_6__ {scalar_t__ qp_type; scalar_t__ srq; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; } ;
struct TYPE_5__ {struct hns_roce_qp* wrid; } ;
struct TYPE_4__ {struct hns_roce_qp* wrid; } ;
struct hns_roce_qp {TYPE_3__ ibqp; int /*<<< orphan*/  hr_buf; int /*<<< orphan*/  buff_size; TYPE_2__ rq; TYPE_1__ sq; int /*<<< orphan*/  umem; int /*<<< orphan*/  mtt; int /*<<< orphan*/  qpn; int /*<<< orphan*/  state; } ;
struct hns_roce_dev {int dummy; } ;
struct hns_roce_cq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IB_QPS_RESET ; 
 scalar_t__ IB_QPT_RC ; 
 int /*<<< orphan*/  FUNC0 (struct hns_roce_cq*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct hns_roce_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hns_roce_cq*,struct hns_roce_cq*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns_roce_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hns_roce_dev*,struct hns_roce_qp*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_roce_dev*,struct hns_roce_qp*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns_roce_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct hns_roce_cq*,struct hns_roce_cq*) ; 
 int FUNC8 (struct ib_qp*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct hns_roce_qp* FUNC9 (struct hns_roce_qp*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct hns_roce_qp*) ; 
 struct hns_roce_cq* FUNC12 (int /*<<< orphan*/ ) ; 
 struct hns_roce_dev* FUNC13 (int /*<<< orphan*/ ) ; 
 struct hns_roce_qp* FUNC14 (struct ib_qp*) ; 
 int /*<<< orphan*/ * FUNC15 (scalar_t__) ; 

int FUNC16(struct ib_qp *ibqp, struct ib_udata *udata)
{
	struct hns_roce_dev *hr_dev = FUNC13(ibqp->device);
	struct hns_roce_qp *hr_qp = FUNC14(ibqp);
	struct hns_roce_cq *send_cq, *recv_cq;
	int ret;

	ret = FUNC8(ibqp, NULL, 0, hr_qp->state, IB_QPS_RESET);
	if (ret)
		return ret;

	send_cq = FUNC12(hr_qp->ibqp.send_cq);
	recv_cq = FUNC12(hr_qp->ibqp.recv_cq);

	FUNC2(send_cq, recv_cq);
	if (!udata) {
		FUNC0(recv_cq, hr_qp->qpn, hr_qp->ibqp.srq ?
				       FUNC15(hr_qp->ibqp.srq) : NULL);
		if (send_cq != recv_cq)
			FUNC0(send_cq, hr_qp->qpn, NULL);
	}
	FUNC7(send_cq, recv_cq);

	FUNC5(hr_dev, hr_qp);
	FUNC4(hr_dev, hr_qp);

	/* RC QP, release QPN */
	if (hr_qp->ibqp.qp_type == IB_QPT_RC)
		FUNC6(hr_dev, hr_qp->qpn, 1);

	FUNC3(hr_dev, &hr_qp->mtt);

	FUNC10(hr_qp->umem);
	if (!udata) {
		FUNC11(hr_qp->sq.wrid);
		FUNC11(hr_qp->rq.wrid);

		FUNC1(hr_dev, hr_qp->buff_size, &hr_qp->hr_buf);
	}

	if (hr_qp->ibqp.qp_type == IB_QPT_RC)
		FUNC11(hr_qp);
	else
		FUNC11(FUNC9(hr_qp));
	return 0;
}