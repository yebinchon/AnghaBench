
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int flushed; } ;
struct TYPE_5__ {int flushed; } ;
struct bnxt_qplib_qp {TYPE_4__ rq; int rq_flush; int srq; TYPE_1__ sq; int sq_flush; struct bnxt_qplib_cq* rcq; struct bnxt_qplib_cq* scq; } ;
struct TYPE_7__ {TYPE_2__* pdev; } ;
struct bnxt_qplib_cq {int rqf_head; TYPE_3__ hwq; int sqf_head; } ;
struct TYPE_6__ {int dev; } ;


 int bnxt_qplib_cancel_phantom_processing (struct bnxt_qplib_qp*) ;
 int dev_dbg (int *,char*,struct bnxt_qplib_qp*) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void __bnxt_qplib_add_flush_qp(struct bnxt_qplib_qp *qp)
{
 struct bnxt_qplib_cq *scq, *rcq;

 scq = qp->scq;
 rcq = qp->rcq;

 if (!qp->sq.flushed) {
  dev_dbg(&scq->hwq.pdev->dev,
   "FP: Adding to SQ Flush list = %p\n", qp);
  bnxt_qplib_cancel_phantom_processing(qp);
  list_add_tail(&qp->sq_flush, &scq->sqf_head);
  qp->sq.flushed = 1;
 }
 if (!qp->srq) {
  if (!qp->rq.flushed) {
   dev_dbg(&rcq->hwq.pdev->dev,
    "FP: Adding to RQ Flush list = %p\n", qp);
   list_add_tail(&qp->rq_flush, &rcq->rqf_head);
   qp->rq.flushed = 1;
  }
 }
}
