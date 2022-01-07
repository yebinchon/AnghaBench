
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct i40iw_update_sds_info {int dummy; } ;
struct i40iw_sc_dev {struct i40iw_sc_cqp* cqp; } ;
struct i40iw_sc_cqp {int dummy; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_DONE_COUNT ;
 int I40IW_ERR_CQP_COMPL_ERROR ;
 int cqp_sds_wqe_fill (struct i40iw_sc_cqp*,struct i40iw_update_sds_info*,int ) ;
 int i40iw_cqp_poll_registers (struct i40iw_sc_cqp*,scalar_t__,int ) ;
 int i40iw_get_cqp_reg_info (struct i40iw_sc_cqp*,scalar_t__*,scalar_t__*,scalar_t__*) ;
 int i40iw_sc_cqp_post_sq (struct i40iw_sc_cqp*) ;

enum i40iw_status_code i40iw_update_sds_noccq(struct i40iw_sc_dev *dev,
           struct i40iw_update_sds_info *info)
{
 u32 error, val, tail;
 struct i40iw_sc_cqp *cqp = dev->cqp;
 enum i40iw_status_code ret_code;

 ret_code = cqp_sds_wqe_fill(cqp, info, 0);
 if (ret_code)
  return ret_code;
 i40iw_get_cqp_reg_info(cqp, &val, &tail, &error);
 if (error)
  return I40IW_ERR_CQP_COMPL_ERROR;

 i40iw_sc_cqp_post_sq(cqp);
 ret_code = i40iw_cqp_poll_registers(cqp, tail, I40IW_DONE_COUNT);

 return ret_code;
}
