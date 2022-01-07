
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qm_cqe {int sq_head; } ;
struct TYPE_2__ {int cq_head; scalar_t__ cqc_phase; int used; } ;
struct hisi_qp {TYPE_1__ qp_status; int qp_id; struct qm_cqe* cqe; scalar_t__ sqe; int (* req_cb ) (struct hisi_qp*,scalar_t__) ;} ;
struct hisi_qm {int sqe_size; } ;


 scalar_t__ QM_CQE_PHASE (struct qm_cqe*) ;
 int QM_DOORBELL_CMD_CQ ;
 int atomic_dec (int *) ;
 int dma_rmb () ;
 int qm_cq_head_update (struct hisi_qp*) ;
 int qm_db (struct hisi_qm*,int ,int ,int,int) ;
 int stub1 (struct hisi_qp*,scalar_t__) ;

__attribute__((used)) static void qm_poll_qp(struct hisi_qp *qp, struct hisi_qm *qm)
{
 struct qm_cqe *cqe = qp->cqe + qp->qp_status.cq_head;

 if (qp->req_cb) {
  while (QM_CQE_PHASE(cqe) == qp->qp_status.cqc_phase) {
   dma_rmb();
   qp->req_cb(qp, qp->sqe + qm->sqe_size * cqe->sq_head);
   qm_cq_head_update(qp);
   cqe = qp->cqe + qp->qp_status.cq_head;
   qm_db(qm, qp->qp_id, QM_DOORBELL_CMD_CQ,
         qp->qp_status.cq_head, 0);
   atomic_dec(&qp->qp_status.used);
  }


  qm_db(qm, qp->qp_id, QM_DOORBELL_CMD_CQ,
        qp->qp_status.cq_head, 1);
 }
}
