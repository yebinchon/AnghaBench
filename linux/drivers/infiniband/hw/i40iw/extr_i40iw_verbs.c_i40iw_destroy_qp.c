
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_udata {int dummy; } ;
struct ib_qp {int dummy; } ;
struct i40iw_qp {int destroyed; scalar_t__ ibqp_state; scalar_t__ iwscq; scalar_t__ iwrcq; int ibqp; int user_mode; } ;


 int I40IW_QP_STATE_ERROR ;
 scalar_t__ IB_QPS_INIT ;
 scalar_t__ IB_QPS_RTS ;
 int i40iw_clean_cqes (struct i40iw_qp*,scalar_t__) ;
 int i40iw_next_iw_state (struct i40iw_qp*,int ,int ,int ,int ) ;
 int i40iw_rem_ref (int *) ;
 struct i40iw_qp* to_iwqp (struct ib_qp*) ;

__attribute__((used)) static int i40iw_destroy_qp(struct ib_qp *ibqp, struct ib_udata *udata)
{
 struct i40iw_qp *iwqp = to_iwqp(ibqp);

 iwqp->destroyed = 1;

 if (iwqp->ibqp_state >= IB_QPS_INIT && iwqp->ibqp_state < IB_QPS_RTS)
  i40iw_next_iw_state(iwqp, I40IW_QP_STATE_ERROR, 0, 0, 0);

 if (!iwqp->user_mode) {
  if (iwqp->iwscq) {
   i40iw_clean_cqes(iwqp, iwqp->iwscq);
   if (iwqp->iwrcq != iwqp->iwscq)
    i40iw_clean_cqes(iwqp, iwqp->iwrcq);
  }
 }

 i40iw_rem_ref(&iwqp->ibqp);
 return 0;
}
