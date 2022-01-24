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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_7__ {int /*<<< orphan*/  pbl; } ;
struct TYPE_5__ {int /*<<< orphan*/  pbl; } ;
struct qedr_qp {int /*<<< orphan*/  qed_qp; int /*<<< orphan*/  icid; int /*<<< orphan*/  qp_id; TYPE_3__ rq; TYPE_1__ sq; } ;
struct qedr_dev {int /*<<< orphan*/  rdma_ctx; TYPE_4__* ops; int /*<<< orphan*/  cdev; } ;
struct qed_rdma_create_qp_out_params {int /*<<< orphan*/  icid; int /*<<< orphan*/  qp_id; int /*<<< orphan*/  rq_pbl_phys; int /*<<< orphan*/  rq_pbl_virt; int /*<<< orphan*/  sq_pbl_phys; int /*<<< orphan*/  sq_pbl_virt; } ;
struct qed_rdma_create_qp_in_params {void* rq_num_pages; void* sq_num_pages; } ;
struct qed_chain_ext_pbl {int /*<<< orphan*/  p_pbl_phys; int /*<<< orphan*/  p_pbl_virt; } ;
struct TYPE_8__ {int /*<<< orphan*/  (* rdma_destroy_qp ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_2__* common; int /*<<< orphan*/  (* rdma_create_qp ) (int /*<<< orphan*/ ,struct qed_rdma_create_qp_in_params*,struct qed_rdma_create_qp_out_params*) ;} ;
struct TYPE_6__ {int (* chain_alloc ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qed_chain_ext_pbl*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  QEDR_RQE_ELEMENT_SIZE ; 
 int /*<<< orphan*/  QEDR_SQE_ELEMENT_SIZE ; 
 int /*<<< orphan*/  QED_CHAIN_CNT_TYPE_U32 ; 
 int /*<<< orphan*/  QED_CHAIN_MODE_PBL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  QED_CHAIN_USE_TO_CONSUME_PRODUCE ; 
 int /*<<< orphan*/  QED_CHAIN_USE_TO_PRODUCE ; 
 int /*<<< orphan*/  FUNC1 (struct qedr_dev*,struct qedr_qp*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct qed_rdma_create_qp_in_params*,struct qed_rdma_create_qp_out_params*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qed_chain_ext_pbl*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct qed_chain_ext_pbl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct qedr_dev *dev,
			    struct qedr_qp *qp,
			    struct qed_rdma_create_qp_in_params *in_params,
			    u32 n_sq_elems, u32 n_rq_elems)
{
	struct qed_rdma_create_qp_out_params out_params;
	struct qed_chain_ext_pbl ext_pbl;
	int rc;

	in_params->sq_num_pages = FUNC0(n_sq_elems,
						     QEDR_SQE_ELEMENT_SIZE,
						     QED_CHAIN_MODE_PBL);
	in_params->rq_num_pages = FUNC0(n_rq_elems,
						     QEDR_RQE_ELEMENT_SIZE,
						     QED_CHAIN_MODE_PBL);

	qp->qed_qp = dev->ops->rdma_create_qp(dev->rdma_ctx,
					      in_params, &out_params);

	if (!qp->qed_qp)
		return -EINVAL;

	/* Now we allocate the chain */
	ext_pbl.p_pbl_virt = out_params.sq_pbl_virt;
	ext_pbl.p_pbl_phys = out_params.sq_pbl_phys;

	rc = dev->ops->common->chain_alloc(dev->cdev,
					   QED_CHAIN_USE_TO_PRODUCE,
					   QED_CHAIN_MODE_PBL,
					   QED_CHAIN_CNT_TYPE_U32,
					   n_sq_elems,
					   QEDR_SQE_ELEMENT_SIZE,
					   &qp->sq.pbl, &ext_pbl);

	if (rc)
		goto err;

	ext_pbl.p_pbl_virt = out_params.rq_pbl_virt;
	ext_pbl.p_pbl_phys = out_params.rq_pbl_phys;

	rc = dev->ops->common->chain_alloc(dev->cdev,
					   QED_CHAIN_USE_TO_CONSUME_PRODUCE,
					   QED_CHAIN_MODE_PBL,
					   QED_CHAIN_CNT_TYPE_U32,
					   n_rq_elems,
					   QEDR_RQE_ELEMENT_SIZE,
					   &qp->rq.pbl, &ext_pbl);

	if (rc)
		goto err;

	qp->qp_id = out_params.qp_id;
	qp->icid = out_params.icid;

	FUNC1(dev, qp);
	return rc;

err:
	dev->ops->rdma_destroy_qp(dev->rdma_ctx, qp->qed_qp);

	return rc;
}