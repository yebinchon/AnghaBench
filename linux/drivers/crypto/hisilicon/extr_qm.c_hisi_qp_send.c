
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct hisi_qp_status {int sq_tail; int used; int flags; } ;
struct hisi_qp {struct hisi_qp_status qp_status; int qp_id; TYPE_2__* qm; } ;
struct TYPE_4__ {int sqe_size; TYPE_1__* pdev; } ;
struct TYPE_3__ {int dev; } ;


 int EAGAIN ;
 int EBUSY ;
 int QM_DOORBELL_CMD_SQ ;
 int QM_Q_DEPTH ;
 int QP_STOP ;
 int atomic_inc (int *) ;
 int dev_info (int *,char*) ;
 int memcpy (void*,void const*,int ) ;
 int qm_db (TYPE_2__*,int ,int ,int,int ) ;
 void* qm_get_avail_sqe (struct hisi_qp*) ;
 int test_bit (int ,int *) ;
 scalar_t__ unlikely (int ) ;

int hisi_qp_send(struct hisi_qp *qp, const void *msg)
{
 struct hisi_qp_status *qp_status = &qp->qp_status;
 u16 sq_tail = qp_status->sq_tail;
 u16 sq_tail_next = (sq_tail + 1) % QM_Q_DEPTH;
 void *sqe = qm_get_avail_sqe(qp);

 if (unlikely(test_bit(QP_STOP, &qp->qp_status.flags))) {
  dev_info(&qp->qm->pdev->dev, "QP is stopped or resetting\n");
  return -EAGAIN;
 }

 if (!sqe)
  return -EBUSY;

 memcpy(sqe, msg, qp->qm->sqe_size);

 qm_db(qp->qm, qp->qp_id, QM_DOORBELL_CMD_SQ, sq_tail_next, 0);
 atomic_inc(&qp->qp_status.used);
 qp_status->sq_tail = sq_tail_next;

 return 0;
}
