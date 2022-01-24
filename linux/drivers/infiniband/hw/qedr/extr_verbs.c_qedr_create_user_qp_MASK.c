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
typedef  int /*<<< orphan*/  ureq ;
struct TYPE_5__ {int /*<<< orphan*/  num_pbes; } ;
struct TYPE_8__ {TYPE_2__* pbl_tbl; TYPE_1__ pbl_info; } ;
struct qedr_qp {int /*<<< orphan*/  qed_qp; int /*<<< orphan*/  icid; int /*<<< orphan*/  qp_id; TYPE_4__ urq; int /*<<< orphan*/  srq; TYPE_4__ usq; } ;
struct qedr_pd {int dummy; } ;
struct qedr_dev {int /*<<< orphan*/  rdma_ctx; TYPE_3__* ops; int /*<<< orphan*/  ibdev; } ;
struct qedr_create_qp_ureq {int /*<<< orphan*/  rq_pbl_ptr; int /*<<< orphan*/  rq_num_pages; int /*<<< orphan*/  sq_pbl_ptr; int /*<<< orphan*/  sq_num_pages; int /*<<< orphan*/  qp_handle_hi; int /*<<< orphan*/  qp_handle_lo; int /*<<< orphan*/  rq_len; int /*<<< orphan*/  rq_addr; int /*<<< orphan*/  sq_len; int /*<<< orphan*/  sq_addr; } ;
struct qed_rdma_create_qp_out_params {int /*<<< orphan*/  icid; int /*<<< orphan*/  qp_id; } ;
struct qed_rdma_create_qp_in_params {int /*<<< orphan*/  rq_pbl_ptr; int /*<<< orphan*/  rq_num_pages; int /*<<< orphan*/  sq_pbl_ptr; int /*<<< orphan*/  sq_num_pages; int /*<<< orphan*/  qp_handle_hi; int /*<<< orphan*/  qp_handle_lo; int /*<<< orphan*/  rq_len; int /*<<< orphan*/  rq_addr; int /*<<< orphan*/  sq_len; int /*<<< orphan*/  sq_addr; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_init_attr {int dummy; } ;
struct ib_pd {int dummy; } ;
typedef  int /*<<< orphan*/  in_params ;
struct TYPE_7__ {int (* rdma_destroy_qp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* rdma_create_qp ) (int /*<<< orphan*/ ,struct qedr_create_qp_ureq*,struct qed_rdma_create_qp_out_params*) ;} ;
struct TYPE_6__ {int /*<<< orphan*/  pa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,char*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct qedr_pd* FUNC1 (struct ib_pd*) ; 
 int FUNC2 (struct qedr_create_qp_ureq*,struct ib_udata*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct qedr_create_qp_ureq*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qedr_dev*,struct qedr_qp*) ; 
 int FUNC5 (struct qedr_dev*,struct qedr_qp*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC6 (struct qedr_dev*,struct qedr_pd*,struct qedr_qp*,struct ib_qp_init_attr*,int,struct qedr_create_qp_ureq*) ; 
 int FUNC7 (struct ib_udata*,struct qedr_dev*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct qedr_dev*,struct qedr_qp*,struct qed_rdma_create_qp_out_params*) ; 
 int /*<<< orphan*/  FUNC9 (struct qedr_dev*,struct qedr_qp*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct qedr_create_qp_ureq*,struct qed_rdma_create_qp_out_params*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct qedr_dev *dev,
			       struct qedr_qp *qp,
			       struct ib_pd *ibpd,
			       struct ib_udata *udata,
			       struct ib_qp_init_attr *attrs)
{
	struct qed_rdma_create_qp_in_params in_params;
	struct qed_rdma_create_qp_out_params out_params;
	struct qedr_pd *pd = FUNC1(ibpd);
	struct qedr_create_qp_ureq ureq;
	int alloc_and_init = FUNC11(&dev->ibdev, 1);
	int rc = -EINVAL;

	FUNC3(&ureq, 0, sizeof(ureq));
	rc = FUNC2(&ureq, udata, sizeof(ureq));
	if (rc) {
		FUNC0(dev, "Problem copying data from user space\n");
		return rc;
	}

	/* SQ - read access only (0), dma sync not required (0) */
	rc = FUNC7(udata, dev, &qp->usq, ureq.sq_addr,
				  ureq.sq_len, 0, 0, alloc_and_init);
	if (rc)
		return rc;

	if (!qp->srq) {
		/* RQ - read access only (0), dma sync not required (0) */
		rc = FUNC7(udata, dev, &qp->urq, ureq.rq_addr,
					  ureq.rq_len, 0, 0, alloc_and_init);
		if (rc)
			return rc;
	}

	FUNC3(&in_params, 0, sizeof(in_params));
	FUNC6(dev, pd, qp, attrs, false, &in_params);
	in_params.qp_handle_lo = ureq.qp_handle_lo;
	in_params.qp_handle_hi = ureq.qp_handle_hi;
	in_params.sq_num_pages = qp->usq.pbl_info.num_pbes;
	in_params.sq_pbl_ptr = qp->usq.pbl_tbl->pa;
	if (!qp->srq) {
		in_params.rq_num_pages = qp->urq.pbl_info.num_pbes;
		in_params.rq_pbl_ptr = qp->urq.pbl_tbl->pa;
	}

	qp->qed_qp = dev->ops->rdma_create_qp(dev->rdma_ctx,
					      &in_params, &out_params);

	if (!qp->qed_qp) {
		rc = -ENOMEM;
		goto err1;
	}

	if (FUNC10(&dev->ibdev, 1))
		FUNC8(dev, qp, &out_params);

	qp->qp_id = out_params.qp_id;
	qp->icid = out_params.icid;

	rc = FUNC5(dev, qp, udata);
	if (rc)
		goto err;

	FUNC9(dev, qp);

	return 0;
err:
	rc = dev->ops->rdma_destroy_qp(dev->rdma_ctx, qp->qed_qp);
	if (rc)
		FUNC0(dev, "create qp: fatal fault. rc=%d", rc);

err1:
	FUNC4(dev, qp);
	return rc;
}