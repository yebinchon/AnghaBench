
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cq_head; int cqc_phase; } ;
struct hisi_qp {TYPE_1__ qp_status; } ;


 int QM_Q_DEPTH ;

__attribute__((used)) static void qm_cq_head_update(struct hisi_qp *qp)
{
 if (qp->qp_status.cq_head == QM_Q_DEPTH - 1) {
  qp->qp_status.cqc_phase = !qp->qp_status.cqc_phase;
  qp->qp_status.cq_head = 0;
 } else {
  qp->qp_status.cq_head++;
 }
}
