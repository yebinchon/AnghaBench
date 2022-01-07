
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i40iw_sc_cqp {int dummy; } ;
struct i40iw_sc_aeq {TYPE_1__* dev; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;
struct TYPE_2__ {struct i40iw_sc_cqp* cqp; } ;


 int I40IW_CQP_OP_CREATE_AEQ ;
 int i40iw_sc_poll_for_cqp_op_done (struct i40iw_sc_cqp*,int ,int *) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_aeq_create_done(struct i40iw_sc_aeq *aeq)
{
 struct i40iw_sc_cqp *cqp;

 cqp = aeq->dev->cqp;
 return i40iw_sc_poll_for_cqp_op_done(cqp, I40IW_CQP_OP_CREATE_AEQ, ((void*)0));
}
