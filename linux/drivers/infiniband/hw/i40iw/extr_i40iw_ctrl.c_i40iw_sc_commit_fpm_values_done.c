
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_cqp {int dummy; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_CQP_OP_COMMIT_FPM_VALUES ;
 int i40iw_sc_poll_for_cqp_op_done (struct i40iw_sc_cqp*,int ,int *) ;

__attribute__((used)) static enum i40iw_status_code i40iw_sc_commit_fpm_values_done(struct i40iw_sc_cqp *cqp)
{
 return i40iw_sc_poll_for_cqp_op_done(cqp, I40IW_CQP_OP_COMMIT_FPM_VALUES, ((void*)0));
}
