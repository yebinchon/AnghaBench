
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_srq {int srq_id; } ;
struct qedr_dev {int rdma_ctx; TYPE_1__* ops; int srqs; } ;
struct qed_rdma_destroy_srq_in_params {int srq_id; } ;
struct ib_udata {int dummy; } ;
struct ib_srq {scalar_t__ uobject; int device; } ;
struct TYPE_2__ {int (* rdma_destroy_srq ) (int ,struct qed_rdma_destroy_srq_in_params*) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,int ) ;
 int QEDR_MSG_SRQ ;
 struct qedr_dev* get_qedr_dev (int ) ;
 struct qedr_srq* get_qedr_srq (struct ib_srq*) ;
 int qedr_free_srq_kernel_params (struct qedr_srq*) ;
 int qedr_free_srq_user_params (struct qedr_srq*) ;
 int stub1 (int ,struct qed_rdma_destroy_srq_in_params*) ;
 int xa_erase_irq (int *,int ) ;

void qedr_destroy_srq(struct ib_srq *ibsrq, struct ib_udata *udata)
{
 struct qed_rdma_destroy_srq_in_params in_params = {};
 struct qedr_dev *dev = get_qedr_dev(ibsrq->device);
 struct qedr_srq *srq = get_qedr_srq(ibsrq);

 xa_erase_irq(&dev->srqs, srq->srq_id);
 in_params.srq_id = srq->srq_id;
 dev->ops->rdma_destroy_srq(dev->rdma_ctx, &in_params);

 if (ibsrq->uobject)
  qedr_free_srq_user_params(srq);
 else
  qedr_free_srq_kernel_params(srq);

 DP_DEBUG(dev, QEDR_MSG_SRQ,
   "destroy srq: destroyed srq with srq_id=0x%0x\n",
   srq->srq_id);
}
