
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_cqp {int process_cqp_sds; } ;
struct i40iw_sc_ceq {TYPE_1__* dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {struct i40iw_sc_cqp* cqp; } ;


 int I40IW_CQP_OP_DESTROY_CEQ ;
 int i40iw_sc_poll_for_cqp_op_done (struct i40iw_sc_cqp*,int ,int *) ;
 int i40iw_update_sds_noccq ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_cceq_destroy_done(struct i40iw_sc_ceq *ceq)
{
 struct i40iw_sc_cqp *cqp;

 cqp = ceq->dev->cqp;
 cqp->process_cqp_sds = i40iw_update_sds_noccq;
 return i40iw_sc_poll_for_cqp_op_done(cqp, I40IW_CQP_OP_DESTROY_CEQ, ((void*)0));
}
