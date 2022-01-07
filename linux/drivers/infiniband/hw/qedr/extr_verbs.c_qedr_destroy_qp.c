
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qedr_qp {scalar_t__ qp_type; scalar_t__ state; int qp_id; int refcnt; TYPE_1__* ep; struct qedr_dev* dev; } ;
struct qedr_dev {int qps; int ibdev; } ;
struct ib_udata {int dummy; } ;
struct ib_qp_attr {int qp_state; } ;
struct ib_qp {int dummy; } ;
struct TYPE_2__ {scalar_t__ during_connect; } ;


 int DP_DEBUG (struct qedr_dev*,int ,char*,...) ;
 int DP_NOTICE (struct qedr_dev*,char*) ;
 int IB_QPS_ERR ;
 scalar_t__ IB_QPT_GSI ;
 int IB_QP_STATE ;
 int QEDR_MSG_QP ;
 scalar_t__ QED_ROCE_QP_STATE_ERR ;
 scalar_t__ QED_ROCE_QP_STATE_INIT ;
 scalar_t__ QED_ROCE_QP_STATE_RESET ;
 scalar_t__ atomic_dec_and_test (int *) ;
 struct qedr_qp* get_qedr_qp (struct ib_qp*) ;
 int kfree (struct qedr_qp*) ;
 int msleep (int) ;
 int qedr_destroy_gsi_qp (struct qedr_dev*) ;
 int qedr_free_qp_resources (struct qedr_dev*,struct qedr_qp*,struct ib_udata*) ;
 int qedr_modify_qp (struct ib_qp*,struct ib_qp_attr*,int,int *) ;
 scalar_t__ rdma_protocol_iwarp (int *,int) ;
 scalar_t__ rdma_protocol_roce (int *,int) ;
 int xa_erase_irq (int *,int ) ;

int qedr_destroy_qp(struct ib_qp *ibqp, struct ib_udata *udata)
{
 struct qedr_qp *qp = get_qedr_qp(ibqp);
 struct qedr_dev *dev = qp->dev;
 struct ib_qp_attr attr;
 int attr_mask = 0;

 DP_DEBUG(dev, QEDR_MSG_QP, "destroy qp: destroying %p, qp type=%d\n",
   qp, qp->qp_type);

 if (rdma_protocol_roce(&dev->ibdev, 1)) {
  if ((qp->state != QED_ROCE_QP_STATE_RESET) &&
      (qp->state != QED_ROCE_QP_STATE_ERR) &&
      (qp->state != QED_ROCE_QP_STATE_INIT)) {

   attr.qp_state = IB_QPS_ERR;
   attr_mask |= IB_QP_STATE;


   qedr_modify_qp(ibqp, &attr, attr_mask, ((void*)0));
  }
 } else {

  if (qp->ep) {
   int wait_count = 1;

   while (qp->ep->during_connect) {
    DP_DEBUG(dev, QEDR_MSG_QP,
      "Still in during connect/accept\n");

    msleep(100);
    if (wait_count++ > 200) {
     DP_NOTICE(dev,
        "during connect timeout\n");
     break;
    }
   }
  }
 }

 if (qp->qp_type == IB_QPT_GSI)
  qedr_destroy_gsi_qp(dev);

 qedr_free_qp_resources(dev, qp, udata);

 if (atomic_dec_and_test(&qp->refcnt) &&
     rdma_protocol_iwarp(&dev->ibdev, 1)) {
  xa_erase_irq(&dev->qps, qp->qp_id);
  kfree(qp);
 }
 return 0;
}
