
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_7__ {int pbl; } ;
struct TYPE_5__ {int pbl; } ;
struct qedr_qp {int qed_qp; int icid; int qp_id; TYPE_3__ rq; TYPE_1__ sq; } ;
struct qedr_dev {int rdma_ctx; TYPE_4__* ops; int cdev; } ;
struct qed_rdma_create_qp_out_params {int icid; int qp_id; int rq_pbl_phys; int rq_pbl_virt; int sq_pbl_phys; int sq_pbl_virt; } ;
struct qed_rdma_create_qp_in_params {void* rq_num_pages; void* sq_num_pages; } ;
struct qed_chain_ext_pbl {int p_pbl_phys; int p_pbl_virt; } ;
struct TYPE_8__ {int (* rdma_destroy_qp ) (int ,int ) ;TYPE_2__* common; int (* rdma_create_qp ) (int ,struct qed_rdma_create_qp_in_params*,struct qed_rdma_create_qp_out_params*) ;} ;
struct TYPE_6__ {int (* chain_alloc ) (int ,int ,int ,int ,int ,int ,int *,struct qed_chain_ext_pbl*) ;} ;


 int EINVAL ;
 int QEDR_RQE_ELEMENT_SIZE ;
 int QEDR_SQE_ELEMENT_SIZE ;
 int QED_CHAIN_CNT_TYPE_U32 ;
 int QED_CHAIN_MODE_PBL ;
 void* QED_CHAIN_PAGE_CNT (int ,int ,int ) ;
 int QED_CHAIN_USE_TO_CONSUME_PRODUCE ;
 int QED_CHAIN_USE_TO_PRODUCE ;
 int qedr_set_iwarp_db_info (struct qedr_dev*,struct qedr_qp*) ;
 int stub1 (int ,struct qed_rdma_create_qp_in_params*,struct qed_rdma_create_qp_out_params*) ;
 int stub2 (int ,int ,int ,int ,int ,int ,int *,struct qed_chain_ext_pbl*) ;
 int stub3 (int ,int ,int ,int ,int ,int ,int *,struct qed_chain_ext_pbl*) ;
 int stub4 (int ,int ) ;

__attribute__((used)) static int
qedr_iwarp_create_kernel_qp(struct qedr_dev *dev,
       struct qedr_qp *qp,
       struct qed_rdma_create_qp_in_params *in_params,
       u32 n_sq_elems, u32 n_rq_elems)
{
 struct qed_rdma_create_qp_out_params out_params;
 struct qed_chain_ext_pbl ext_pbl;
 int rc;

 in_params->sq_num_pages = QED_CHAIN_PAGE_CNT(n_sq_elems,
           QEDR_SQE_ELEMENT_SIZE,
           QED_CHAIN_MODE_PBL);
 in_params->rq_num_pages = QED_CHAIN_PAGE_CNT(n_rq_elems,
           QEDR_RQE_ELEMENT_SIZE,
           QED_CHAIN_MODE_PBL);

 qp->qed_qp = dev->ops->rdma_create_qp(dev->rdma_ctx,
           in_params, &out_params);

 if (!qp->qed_qp)
  return -EINVAL;


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

 qedr_set_iwarp_db_info(dev, qp);
 return rc;

err:
 dev->ops->rdma_destroy_qp(dev->rdma_ctx, qp->qed_qp);

 return rc;
}
