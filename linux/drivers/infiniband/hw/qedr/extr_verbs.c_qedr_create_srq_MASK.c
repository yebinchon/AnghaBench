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
typedef  int /*<<< orphan*/  ureq ;
typedef  void* u64 ;
typedef  void* u32 ;
struct qed_chain {int dummy; } ;
struct qedr_srq_hwq_info {void* phy_prod_pair_addr; struct qed_chain pbl; int /*<<< orphan*/  max_sges; int /*<<< orphan*/  max_wr; } ;
struct TYPE_7__ {void* num_pbes; } ;
struct TYPE_9__ {TYPE_3__* pbl_tbl; TYPE_2__ pbl_info; } ;
struct qedr_srq {int /*<<< orphan*/  srq_id; TYPE_4__ usrq; int /*<<< orphan*/  lock; struct qedr_srq_hwq_info hw_srq; struct qedr_dev* dev; } ;
struct qedr_pd {int /*<<< orphan*/  pd_id; } ;
struct qedr_dev {int /*<<< orphan*/  rdma_ctx; TYPE_5__* ops; int /*<<< orphan*/  srqs; } ;
struct qedr_create_srq_ureq {int dummy; } ;
struct qed_rdma_destroy_srq_in_params {int /*<<< orphan*/  srq_id; } ;
struct qed_rdma_create_srq_out_params {int /*<<< orphan*/  srq_id; } ;
struct qed_rdma_create_srq_in_params {void* page_size; void* num_pages; void* prod_pair_addr; void* pbl_base_addr; int /*<<< orphan*/  pd_id; } ;
struct ib_udata {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  max_sge; int /*<<< orphan*/  max_wr; } ;
struct ib_srq_init_attr {TYPE_1__ attr; } ;
struct ib_srq {int /*<<< orphan*/  pd; int /*<<< orphan*/  device; } ;
struct TYPE_10__ {int (* rdma_create_srq ) (int /*<<< orphan*/ ,struct qed_rdma_create_srq_in_params*,struct qed_rdma_create_srq_out_params*) ;int /*<<< orphan*/  (* rdma_destroy_srq ) (int /*<<< orphan*/ ,struct qed_rdma_destroy_srq_in_params*) ;} ;
struct TYPE_8__ {void* pa; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qedr_dev*,int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,char*) ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* PAGE_SIZE ; 
 int /*<<< orphan*/  QEDR_MSG_QP ; 
 int /*<<< orphan*/  QEDR_MSG_SRQ ; 
 void* QED_CHAIN_PAGE_SIZE ; 
 struct qedr_dev* FUNC2 (int /*<<< orphan*/ ) ; 
 struct qedr_pd* FUNC3 (int /*<<< orphan*/ ) ; 
 struct qedr_srq* FUNC4 (struct ib_srq*) ; 
 scalar_t__ FUNC5 (struct qedr_create_srq_ureq*,struct ib_udata*,int) ; 
 void* FUNC6 (struct qed_chain*) ; 
 void* FUNC7 (struct qed_chain*) ; 
 int FUNC8 (struct qedr_srq*,struct qedr_dev*,struct ib_srq_init_attr*) ; 
 int FUNC9 (struct qedr_dev*,struct ib_srq_init_attr*,struct ib_udata*) ; 
 int FUNC10 (struct qedr_dev*,struct qedr_srq*,struct ib_udata*) ; 
 int /*<<< orphan*/  FUNC11 (struct qedr_srq*) ; 
 int /*<<< orphan*/  FUNC12 (struct qedr_srq*) ; 
 int FUNC13 (struct ib_udata*,struct qedr_srq*,struct qedr_create_srq_ureq*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct qed_rdma_create_srq_in_params*,struct qed_rdma_create_srq_out_params*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,struct qed_rdma_destroy_srq_in_params*) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct qedr_srq*,int /*<<< orphan*/ ) ; 

int FUNC18(struct ib_srq *ibsrq, struct ib_srq_init_attr *init_attr,
		    struct ib_udata *udata)
{
	struct qed_rdma_destroy_srq_in_params destroy_in_params;
	struct qed_rdma_create_srq_in_params in_params = {};
	struct qedr_dev *dev = FUNC2(ibsrq->device);
	struct qed_rdma_create_srq_out_params out_params;
	struct qedr_pd *pd = FUNC3(ibsrq->pd);
	struct qedr_create_srq_ureq ureq = {};
	u64 pbl_base_addr, phy_prod_pair_addr;
	struct qedr_srq_hwq_info *hw_srq;
	u32 page_cnt, page_size;
	struct qedr_srq *srq = FUNC4(ibsrq);
	int rc = 0;

	FUNC0(dev, QEDR_MSG_QP,
		 "create SRQ called from %s (pd %p)\n",
		 (udata) ? "User lib" : "kernel", pd);

	rc = FUNC9(dev, init_attr, udata);
	if (rc)
		return -EINVAL;

	srq->dev = dev;
	hw_srq = &srq->hw_srq;
	FUNC14(&srq->lock);

	hw_srq->max_wr = init_attr->attr.max_wr;
	hw_srq->max_sges = init_attr->attr.max_sge;

	if (udata) {
		if (FUNC5(&ureq, udata, sizeof(ureq))) {
			FUNC1(dev,
			       "create srq: problem copying data from user space\n");
			goto err0;
		}

		rc = FUNC13(udata, srq, &ureq, 0, 0);
		if (rc)
			goto err0;

		page_cnt = srq->usrq.pbl_info.num_pbes;
		pbl_base_addr = srq->usrq.pbl_tbl->pa;
		phy_prod_pair_addr = hw_srq->phy_prod_pair_addr;
		page_size = PAGE_SIZE;
	} else {
		struct qed_chain *pbl;

		rc = FUNC8(srq, dev, init_attr);
		if (rc)
			goto err0;

		pbl = &hw_srq->pbl;
		page_cnt = FUNC6(pbl);
		pbl_base_addr = FUNC7(pbl);
		phy_prod_pair_addr = hw_srq->phy_prod_pair_addr;
		page_size = QED_CHAIN_PAGE_SIZE;
	}

	in_params.pd_id = pd->pd_id;
	in_params.pbl_base_addr = pbl_base_addr;
	in_params.prod_pair_addr = phy_prod_pair_addr;
	in_params.num_pages = page_cnt;
	in_params.page_size = page_size;

	rc = dev->ops->rdma_create_srq(dev->rdma_ctx, &in_params, &out_params);
	if (rc)
		goto err1;

	srq->srq_id = out_params.srq_id;

	if (udata) {
		rc = FUNC10(dev, srq, udata);
		if (rc)
			goto err2;
	}

	rc = FUNC17(&dev->srqs, srq->srq_id, srq, GFP_KERNEL);
	if (rc)
		goto err2;

	FUNC0(dev, QEDR_MSG_SRQ,
		 "create srq: created srq with srq_id=0x%0x\n", srq->srq_id);
	return 0;

err2:
	destroy_in_params.srq_id = srq->srq_id;

	dev->ops->rdma_destroy_srq(dev->rdma_ctx, &destroy_in_params);
err1:
	if (udata)
		FUNC12(srq);
	else
		FUNC11(srq);
err0:
	return -EFAULT;
}