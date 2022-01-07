
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rvt_qp {scalar_t__ s_cur; scalar_t__ s_size; void* s_state; scalar_t__ s_psn; struct hfi1_qp_priv* priv; } ;
struct hfi1_qp_priv {scalar_t__ s_tid_cur; } ;


 void* TID_OP (int ) ;
 int WRITE_REQ ;
 int WRITE_RESP ;
 scalar_t__ cmp_psn (scalar_t__,scalar_t__) ;

__attribute__((used)) static void update_qp_retry_state(struct rvt_qp *qp, u32 psn, u32 spsn,
      u32 lpsn)
{
 struct hfi1_qp_priv *qpriv = qp->priv;

 qp->s_psn = psn + 1;






 if (cmp_psn(psn, lpsn) >= 0) {
  qp->s_cur = qpriv->s_tid_cur + 1;
  if (qp->s_cur >= qp->s_size)
   qp->s_cur = 0;
  qp->s_state = TID_OP(WRITE_REQ);
 } else if (!cmp_psn(psn, spsn)) {
  qp->s_cur = qpriv->s_tid_cur;
  qp->s_state = TID_OP(WRITE_RESP);
 }
}
