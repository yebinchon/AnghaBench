
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qedr_dev {int cdev; TYPE_2__* ops; int rdma_ctx; } ;
struct qedr_cq {scalar_t__ icid; int pbl; } ;
struct qed_rdma_destroy_cq_out_params {int dummy; } ;
struct qed_rdma_destroy_cq_in_params {scalar_t__ icid; } ;
struct ib_qp_init_attr {int recv_cq; int send_cq; } ;
struct TYPE_4__ {TYPE_1__* common; int (* rdma_destroy_cq ) (int ,struct qed_rdma_destroy_cq_in_params*,struct qed_rdma_destroy_cq_out_params*) ;} ;
struct TYPE_3__ {int (* chain_free ) (int ,int *) ;} ;


 struct qedr_cq* get_qedr_cq (int ) ;
 int stub1 (int ,struct qed_rdma_destroy_cq_in_params*,struct qed_rdma_destroy_cq_out_params*) ;
 int stub2 (int ,int *) ;
 int stub3 (int ,struct qed_rdma_destroy_cq_in_params*,struct qed_rdma_destroy_cq_out_params*) ;
 int stub4 (int ,int *) ;

__attribute__((used)) static void qedr_destroy_gsi_cq(struct qedr_dev *dev,
    struct ib_qp_init_attr *attrs)
{
 struct qed_rdma_destroy_cq_in_params iparams;
 struct qed_rdma_destroy_cq_out_params oparams;
 struct qedr_cq *cq;

 cq = get_qedr_cq(attrs->send_cq);
 iparams.icid = cq->icid;
 dev->ops->rdma_destroy_cq(dev->rdma_ctx, &iparams, &oparams);
 dev->ops->common->chain_free(dev->cdev, &cq->pbl);

 cq = get_qedr_cq(attrs->recv_cq);

 if (iparams.icid != cq->icid) {
  iparams.icid = cq->icid;
  dev->ops->rdma_destroy_cq(dev->rdma_ctx, &iparams, &oparams);
  dev->ops->common->chain_free(dev->cdev, &cq->pbl);
 }
}
