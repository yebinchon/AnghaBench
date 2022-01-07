
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rvt_qp {int r_flags; int rspwait; scalar_t__ r_adefered; } ;


 int RVT_R_RSP_NAK ;
 int list_del_init (int *) ;
 scalar_t__ list_empty (int *) ;
 int rvt_put_qp (struct rvt_qp*) ;

__attribute__((used)) static inline void rc_cancel_ack(struct rvt_qp *qp)
{
 qp->r_adefered = 0;
 if (list_empty(&qp->rspwait))
  return;
 list_del_init(&qp->rspwait);
 qp->r_flags &= ~RVT_R_RSP_NAK;
 rvt_put_qp(qp);
}
