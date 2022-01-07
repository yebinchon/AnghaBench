
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union rdma_cqe {int resp; int req; } ;
typedef scalar_t__ u32 ;
struct qedr_qp {int ibqp; } ;
struct qedr_dev {int dummy; } ;
struct qedr_cq {scalar_t__ cq_type; int cq_lock; int arm_flags; scalar_t__ cq_cons; int pbl; union rdma_cqe* latest_cqe; int icid; scalar_t__ destroyed; } ;
struct ib_wc {int * qp; } ;
struct ib_cq {int device; } ;


 int DP_ERR (struct qedr_dev*,char*,...) ;
 scalar_t__ QEDR_CQ_TYPE_GSI ;




 int WARN (int,char*,union rdma_cqe*) ;
 struct qedr_qp* cqe_get_qp (union rdma_cqe*) ;
 int cqe_get_type (union rdma_cqe*) ;
 int doorbell_cq (struct qedr_cq*,scalar_t__,int ) ;
 union rdma_cqe* get_cqe (struct qedr_cq*) ;
 struct qedr_cq* get_qedr_cq (struct ib_cq*) ;
 struct qedr_dev* get_qedr_dev (int ) ;
 scalar_t__ is_valid_cqe (struct qedr_cq*,union rdma_cqe*) ;
 scalar_t__ qed_chain_get_cons_idx_u32 (int *) ;
 int qedr_gsi_poll_cq (struct ib_cq*,int,struct ib_wc*) ;
 int qedr_poll_cq_req (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,int,struct ib_wc*,int *) ;
 int qedr_poll_cq_resp (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,int,struct ib_wc*,int *,int*) ;
 int qedr_poll_cq_resp_srq (struct qedr_dev*,struct qedr_qp*,struct qedr_cq*,int,struct ib_wc*,int *) ;
 int rmb () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int try_consume_req_cqe (struct qedr_cq*,struct qedr_qp*,int *,int*) ;

int qedr_poll_cq(struct ib_cq *ibcq, int num_entries, struct ib_wc *wc)
{
 struct qedr_dev *dev = get_qedr_dev(ibcq->device);
 struct qedr_cq *cq = get_qedr_cq(ibcq);
 union rdma_cqe *cqe;
 u32 old_cons, new_cons;
 unsigned long flags;
 int update = 0;
 int done = 0;

 if (cq->destroyed) {
  DP_ERR(dev,
         "warning: poll was invoked after destroy for cq %p (icid=%d)\n",
         cq, cq->icid);
  return 0;
 }

 if (cq->cq_type == QEDR_CQ_TYPE_GSI)
  return qedr_gsi_poll_cq(ibcq, num_entries, wc);

 spin_lock_irqsave(&cq->cq_lock, flags);
 cqe = cq->latest_cqe;
 old_cons = qed_chain_get_cons_idx_u32(&cq->pbl);
 while (num_entries && is_valid_cqe(cq, cqe)) {
  struct qedr_qp *qp;
  int cnt = 0;


  rmb();

  qp = cqe_get_qp(cqe);
  if (!qp) {
   WARN(1, "Error: CQE QP pointer is NULL. CQE=%p\n", cqe);
   break;
  }

  wc->qp = &qp->ibqp;

  switch (cqe_get_type(cqe)) {
  case 130:
   cnt = qedr_poll_cq_req(dev, qp, cq, num_entries, wc,
            &cqe->req);
   try_consume_req_cqe(cq, qp, &cqe->req, &update);
   break;
  case 129:
   cnt = qedr_poll_cq_resp(dev, qp, cq, num_entries, wc,
      &cqe->resp, &update);
   break;
  case 128:
   cnt = qedr_poll_cq_resp_srq(dev, qp, cq, num_entries,
          wc, &cqe->resp);
   update = 1;
   break;
  case 131:
  default:
   DP_ERR(dev, "Error: invalid CQE type = %d\n",
          cqe_get_type(cqe));
  }
  num_entries -= cnt;
  wc += cnt;
  done += cnt;

  cqe = get_cqe(cq);
 }
 new_cons = qed_chain_get_cons_idx_u32(&cq->pbl);

 cq->cq_cons += new_cons - old_cons;

 if (update)



  doorbell_cq(cq, cq->cq_cons - 1, cq->arm_flags);

 spin_unlock_irqrestore(&cq->cq_lock, flags);
 return done;
}
