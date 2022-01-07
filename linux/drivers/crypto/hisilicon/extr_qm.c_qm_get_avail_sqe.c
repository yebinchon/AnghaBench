
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hisi_qp_status {int sq_tail; int used; } ;
struct hisi_qp {void* sqe; TYPE_1__* qm; struct hisi_qp_status qp_status; } ;
struct TYPE_2__ {int sqe_size; } ;


 scalar_t__ QM_Q_DEPTH ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void *qm_get_avail_sqe(struct hisi_qp *qp)
{
 struct hisi_qp_status *qp_status = &qp->qp_status;
 u16 sq_tail = qp_status->sq_tail;

 if (unlikely(atomic_read(&qp->qp_status.used) == QM_Q_DEPTH))
  return ((void*)0);

 return qp->sqe + sq_tail * qp->qm->sqe_size;
}
