
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int r_flags; int rspwait; scalar_t__ s_last_psn; } ;
struct hfi1_ctxtdata {int qp_wait_list; } ;


 int RVT_R_RDMAR_SEQ ;
 int RVT_R_RSP_SEND ;
 int hfi1_restart_rc (struct rvt_qp*,scalar_t__,int ) ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int rvt_get_qp (struct rvt_qp*) ;

__attribute__((used)) static void set_restart_qp(struct rvt_qp *qp, struct hfi1_ctxtdata *rcd)
{

 if (!(qp->r_flags & RVT_R_RDMAR_SEQ)) {
  qp->r_flags |= RVT_R_RDMAR_SEQ;
  hfi1_restart_rc(qp, qp->s_last_psn + 1, 0);
  if (list_empty(&qp->rspwait)) {
   qp->r_flags |= RVT_R_RSP_SEND;
   rvt_get_qp(qp);
   list_add_tail(&qp->rspwait, &rcd->qp_wait_list);
  }
 }
}
