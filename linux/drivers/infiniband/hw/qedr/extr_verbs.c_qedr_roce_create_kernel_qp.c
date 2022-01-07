
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
struct qedr_qp {int icid; int qp_id; int qed_qp; TYPE_3__ rq; TYPE_1__ sq; } ;
struct qedr_dev {int rdma_ctx; TYPE_4__* ops; int cdev; } ;
struct qed_rdma_create_qp_out_params {int icid; int qp_id; } ;
struct qed_rdma_create_qp_in_params {void* rq_pbl_ptr; void* rq_num_pages; void* sq_pbl_ptr; void* sq_num_pages; } ;
struct TYPE_8__ {int (* rdma_create_qp ) (int ,struct qed_rdma_create_qp_in_params*,struct qed_rdma_create_qp_out_params*) ;TYPE_2__* common; } ;
struct TYPE_6__ {int (* chain_alloc ) (int ,int ,int ,int ,int ,int ,int *,int *) ;} ;


 int EINVAL ;
 int QEDR_RQE_ELEMENT_SIZE ;
 int QEDR_SQE_ELEMENT_SIZE ;
 int QED_CHAIN_CNT_TYPE_U32 ;
 int QED_CHAIN_MODE_PBL ;
 int QED_CHAIN_USE_TO_CONSUME_PRODUCE ;
 int QED_CHAIN_USE_TO_PRODUCE ;
 void* qed_chain_get_page_cnt (int *) ;
 void* qed_chain_get_pbl_phys (int *) ;
 int qedr_set_roce_db_info (struct qedr_dev*,struct qedr_qp*) ;
 int stub1 (int ,int ,int ,int ,int ,int ,int *,int *) ;
 int stub2 (int ,int ,int ,int ,int ,int ,int *,int *) ;
 int stub3 (int ,struct qed_rdma_create_qp_in_params*,struct qed_rdma_create_qp_out_params*) ;

__attribute__((used)) static int
qedr_roce_create_kernel_qp(struct qedr_dev *dev,
      struct qedr_qp *qp,
      struct qed_rdma_create_qp_in_params *in_params,
      u32 n_sq_elems, u32 n_rq_elems)
{
 struct qed_rdma_create_qp_out_params out_params;
 int rc;

 rc = dev->ops->common->chain_alloc(dev->cdev,
        QED_CHAIN_USE_TO_PRODUCE,
        QED_CHAIN_MODE_PBL,
        QED_CHAIN_CNT_TYPE_U32,
        n_sq_elems,
        QEDR_SQE_ELEMENT_SIZE,
        &qp->sq.pbl, ((void*)0));

 if (rc)
  return rc;

 in_params->sq_num_pages = qed_chain_get_page_cnt(&qp->sq.pbl);
 in_params->sq_pbl_ptr = qed_chain_get_pbl_phys(&qp->sq.pbl);

 rc = dev->ops->common->chain_alloc(dev->cdev,
        QED_CHAIN_USE_TO_CONSUME_PRODUCE,
        QED_CHAIN_MODE_PBL,
        QED_CHAIN_CNT_TYPE_U32,
        n_rq_elems,
        QEDR_RQE_ELEMENT_SIZE,
        &qp->rq.pbl, ((void*)0));
 if (rc)
  return rc;

 in_params->rq_num_pages = qed_chain_get_page_cnt(&qp->rq.pbl);
 in_params->rq_pbl_ptr = qed_chain_get_pbl_phys(&qp->rq.pbl);

 qp->qed_qp = dev->ops->rdma_create_qp(dev->rdma_ctx,
           in_params, &out_params);

 if (!qp->qed_qp)
  return -EINVAL;

 qp->qp_id = out_params.qp_id;
 qp->icid = out_params.icid;

 qedr_set_roce_db_info(dev, qp);
 return rc;
}
