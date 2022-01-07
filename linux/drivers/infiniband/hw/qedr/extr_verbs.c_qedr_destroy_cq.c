
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qedr_dev {int cdev; TYPE_2__* ops; int rdma_ctx; } ;
struct TYPE_6__ {int umem; int pbl_tbl; int pbl_info; } ;
struct qedr_cq {int destroyed; scalar_t__ cq_type; int cnq_notif; TYPE_3__ q; int pbl; int icid; } ;
struct qed_rdma_destroy_cq_out_params {scalar_t__ num_cq_notif; } ;
struct qed_rdma_destroy_cq_in_params {int icid; } ;
struct ib_udata {int dummy; } ;
struct ib_cq {int device; } ;
struct TYPE_5__ {TYPE_1__* common; int (* rdma_destroy_cq ) (int ,struct qed_rdma_destroy_cq_in_params*,struct qed_rdma_destroy_cq_out_params*) ;} ;
struct TYPE_4__ {int (* chain_free ) (int ,int *) ;} ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,struct qedr_cq*,int ) ;
 scalar_t__ QEDR_CQ_TYPE_GSI ;
 int QEDR_DESTROY_CQ_ITER_DURATION ;
 int QEDR_DESTROY_CQ_MAX_ITERATIONS ;
 int QEDR_MSG_CQ ;
 scalar_t__ READ_ONCE (int ) ;
 struct qedr_cq* get_qedr_cq (struct ib_cq*) ;
 struct qedr_dev* get_qedr_dev (int ) ;
 int ib_umem_release (int ) ;
 int msleep (int ) ;
 int qedr_free_pbl (struct qedr_dev*,int *,int ) ;
 int stub1 (int ,struct qed_rdma_destroy_cq_in_params*,struct qed_rdma_destroy_cq_out_params*) ;
 int stub2 (int ,int *) ;
 int udelay (int ) ;

void qedr_destroy_cq(struct ib_cq *ibcq, struct ib_udata *udata)
{
 struct qedr_dev *dev = get_qedr_dev(ibcq->device);
 struct qed_rdma_destroy_cq_out_params oparams;
 struct qed_rdma_destroy_cq_in_params iparams;
 struct qedr_cq *cq = get_qedr_cq(ibcq);
 int iter;

 DP_DEBUG(dev, QEDR_MSG_CQ, "destroy cq %p (icid=%d)\n", cq, cq->icid);

 cq->destroyed = 1;


 if (cq->cq_type == QEDR_CQ_TYPE_GSI)
  return;

 iparams.icid = cq->icid;
 dev->ops->rdma_destroy_cq(dev->rdma_ctx, &iparams, &oparams);
 dev->ops->common->chain_free(dev->cdev, &cq->pbl);

 if (udata) {
  qedr_free_pbl(dev, &cq->q.pbl_info, cq->q.pbl_tbl);
  ib_umem_release(cq->q.umem);
 }
 iter = QEDR_DESTROY_CQ_MAX_ITERATIONS;
 while (oparams.num_cq_notif != READ_ONCE(cq->cnq_notif) && iter) {
  udelay(QEDR_DESTROY_CQ_ITER_DURATION);
  iter--;
 }

 iter = QEDR_DESTROY_CQ_MAX_ITERATIONS;
 while (oparams.num_cq_notif != READ_ONCE(cq->cnq_notif) && iter) {
  msleep(QEDR_DESTROY_CQ_ITER_DURATION);
  iter--;
 }






}
