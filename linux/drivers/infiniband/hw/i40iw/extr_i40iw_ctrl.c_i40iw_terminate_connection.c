
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i40iw_sc_qp {int term_flags; int eventtype; } ;
struct i40iw_aeqe_info {int dummy; } ;


 int I40IWQP_TERM_SEND_TERM_ONLY ;
 int I40IW_QP_STATE_TERMINATE ;
 int I40IW_TERM_SENT ;
 int TERM_EVENT_QP_FATAL ;
 int i40iw_bld_terminate_hdr (struct i40iw_sc_qp*,struct i40iw_aeqe_info*) ;
 int i40iw_term_modify_qp (struct i40iw_sc_qp*,int ,int ,int ) ;
 int i40iw_terminate_start_timer (struct i40iw_sc_qp*) ;

void i40iw_terminate_connection(struct i40iw_sc_qp *qp, struct i40iw_aeqe_info *info)
{
 u8 termlen = 0;

 if (qp->term_flags & I40IW_TERM_SENT)
  return;


 qp->eventtype = TERM_EVENT_QP_FATAL;
 termlen = i40iw_bld_terminate_hdr(qp, info);
 i40iw_terminate_start_timer(qp);
 qp->term_flags |= I40IW_TERM_SENT;
 i40iw_term_modify_qp(qp, I40IW_QP_STATE_TERMINATE,
        I40IWQP_TERM_SEND_TERM_ONLY, termlen);
}
