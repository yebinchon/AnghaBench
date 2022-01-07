
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_qp {int dummy; } ;


 int I40IWQP_TERM_SEND_FIN_ONLY ;
 int I40IW_QP_STATE_TERMINATE ;
 int i40iw_term_modify_qp (struct i40iw_sc_qp*,int ,int ,int ) ;

void i40iw_terminate_send_fin(struct i40iw_sc_qp *qp)
{

 i40iw_term_modify_qp(qp,
        I40IW_QP_STATE_TERMINATE,
        I40IWQP_TERM_SEND_FIN_ONLY,
        0);
}
