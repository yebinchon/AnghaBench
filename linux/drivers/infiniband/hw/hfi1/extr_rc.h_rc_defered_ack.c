
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int rspwait; int r_flags; } ;
struct hfi1_ctxtdata {int qp_wait_list; } ;


 int RVT_R_RSP_NAK ;
 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;
 int rvt_get_qp (struct rvt_qp*) ;

__attribute__((used)) static inline void rc_defered_ack(struct hfi1_ctxtdata *rcd,
      struct rvt_qp *qp)
{
 if (list_empty(&qp->rspwait)) {
  qp->r_flags |= RVT_R_RSP_NAK;
  rvt_get_qp(qp);
  list_add_tail(&qp->rspwait, &rcd->qp_wait_list);
 }
}
