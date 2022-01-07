
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hisi_qp_status {int cqc_phase; scalar_t__ flags; scalar_t__ cq_head; scalar_t__ sq_tail; } ;
struct hisi_qp {struct hisi_qp_status qp_status; } ;



__attribute__((used)) static void qm_init_qp_status(struct hisi_qp *qp)
{
 struct hisi_qp_status *qp_status = &qp->qp_status;

 qp_status->sq_tail = 0;
 qp_status->cq_head = 0;
 qp_status->cqc_phase = 1;
 qp_status->flags = 0;
}
