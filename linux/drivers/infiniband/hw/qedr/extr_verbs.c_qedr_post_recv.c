
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u32 ;
struct rdma_rq_sge {int dummy; } ;
struct TYPE_11__ {int raw; } ;
struct TYPE_9__ {int value; } ;
struct TYPE_10__ {int raw; TYPE_3__ data; } ;
struct TYPE_12__ {int max_sges; size_t prod; int iwarp_db2; TYPE_5__ iwarp_db2_data; int db; TYPE_4__ db_data; int pbl; } ;
struct qedr_qp {scalar_t__ qp_type; scalar_t__ state; int q_lock; TYPE_6__ rq; TYPE_2__* rqe_wr_id; struct qedr_dev* dev; } ;
struct qedr_dev {int ibdev; } ;
struct ib_recv_wr {int num_sge; struct ib_recv_wr* next; int wr_id; TYPE_1__* sg_list; } ;
struct ib_qp {int dummy; } ;
struct TYPE_8__ {int wqe_size; int wr_id; } ;
struct TYPE_7__ {int lkey; int length; int addr; } ;


 int DP_ERR (struct qedr_dev*,char*,scalar_t__,scalar_t__,int,int) ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IB_QPT_GSI ;
 scalar_t__ QEDR_MAX_RQE_ELEMENTS_PER_RQE ;
 scalar_t__ QED_ROCE_QP_STATE_RESET ;
 int RDMA_RQ_SGE_L_KEY_LO ;
 int RDMA_RQ_SGE_NUM_SGES ;
 int RQ_SGE_SET (struct rdma_rq_sge*,int ,int ,int ) ;
 int SET_FIELD (int ,int ,int) ;
 struct qedr_qp* get_qedr_qp (struct ib_qp*) ;
 scalar_t__ qed_chain_get_elem_left_u32 (int *) ;
 struct rdma_rq_sge* qed_chain_produce (int *) ;
 int qedr_gsi_post_recv (struct ib_qp*,struct ib_recv_wr const*,struct ib_recv_wr const**) ;
 int qedr_inc_sw_prod (TYPE_6__*) ;
 scalar_t__ rdma_protocol_iwarp (int *,int) ;
 int smp_wmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,int ) ;

int qedr_post_recv(struct ib_qp *ibqp, const struct ib_recv_wr *wr,
     const struct ib_recv_wr **bad_wr)
{
 struct qedr_qp *qp = get_qedr_qp(ibqp);
 struct qedr_dev *dev = qp->dev;
 unsigned long flags;
 int status = 0;

 if (qp->qp_type == IB_QPT_GSI)
  return qedr_gsi_post_recv(ibqp, wr, bad_wr);

 spin_lock_irqsave(&qp->q_lock, flags);

 if (qp->state == QED_ROCE_QP_STATE_RESET) {
  spin_unlock_irqrestore(&qp->q_lock, flags);
  *bad_wr = wr;
  return -EINVAL;
 }

 while (wr) {
  int i;

  if (qed_chain_get_elem_left_u32(&qp->rq.pbl) <
      QEDR_MAX_RQE_ELEMENTS_PER_RQE ||
      wr->num_sge > qp->rq.max_sges) {
   DP_ERR(dev, "Can't post WR  (%d < %d) || (%d > %d)\n",
          qed_chain_get_elem_left_u32(&qp->rq.pbl),
          QEDR_MAX_RQE_ELEMENTS_PER_RQE, wr->num_sge,
          qp->rq.max_sges);
   status = -ENOMEM;
   *bad_wr = wr;
   break;
  }
  for (i = 0; i < wr->num_sge; i++) {
   u32 flags = 0;
   struct rdma_rq_sge *rqe =
       qed_chain_produce(&qp->rq.pbl);




   if (!i)
    SET_FIELD(flags, RDMA_RQ_SGE_NUM_SGES,
       wr->num_sge);

   SET_FIELD(flags, RDMA_RQ_SGE_L_KEY_LO,
      wr->sg_list[i].lkey);

   RQ_SGE_SET(rqe, wr->sg_list[i].addr,
       wr->sg_list[i].length, flags);
  }





  if (!wr->num_sge) {
   u32 flags = 0;
   struct rdma_rq_sge *rqe =
       qed_chain_produce(&qp->rq.pbl);




   SET_FIELD(flags, RDMA_RQ_SGE_L_KEY_LO, 0);
   SET_FIELD(flags, RDMA_RQ_SGE_NUM_SGES, 1);

   RQ_SGE_SET(rqe, 0, 0, flags);
   i = 1;
  }

  qp->rqe_wr_id[qp->rq.prod].wr_id = wr->wr_id;
  qp->rqe_wr_id[qp->rq.prod].wqe_size = i;

  qedr_inc_sw_prod(&qp->rq);
  smp_wmb();

  qp->rq.db_data.data.value++;

  writel(qp->rq.db_data.raw, qp->rq.db);

  if (rdma_protocol_iwarp(&dev->ibdev, 1)) {
   writel(qp->rq.iwarp_db2_data.raw, qp->rq.iwarp_db2);
  }

  wr = wr->next;
 }

 spin_unlock_irqrestore(&qp->q_lock, flags);

 return status;
}
