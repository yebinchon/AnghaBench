
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct i40iw_sc_dev {int cqp; scalar_t__ back_dev; } ;
struct i40iw_dma_mem {int va; int pa; } ;
struct i40iw_device {int cqp; } ;
struct TYPE_4__ {uintptr_t scratch; int hmc_fn_id; int fpm_values_va; int fpm_values_pa; int cqp; } ;
struct TYPE_5__ {TYPE_1__ query_fpm_values; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_3__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {int * param; struct cqp_commands_info info; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_NO_MEMORY ;
 int OP_QUERY_FPM_VALUES ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (int *,int) ;
 int i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_pr_err (char*) ;

enum i40iw_status_code i40iw_cqp_query_fpm_values_cmd(struct i40iw_sc_dev *dev,
            struct i40iw_dma_mem *values_mem,
            u8 hmc_fn_id)
{
 enum i40iw_status_code status;
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;
 struct i40iw_device *iwdev = (struct i40iw_device *)dev->back_dev;

 cqp_request = i40iw_get_cqp_request(&iwdev->cqp, 1);
 if (!cqp_request)
  return I40IW_ERR_NO_MEMORY;
 cqp_info = &cqp_request->info;
 cqp_request->param = ((void*)0);
 cqp_info->in.u.query_fpm_values.cqp = dev->cqp;
 cqp_info->in.u.query_fpm_values.fpm_values_pa = values_mem->pa;
 cqp_info->in.u.query_fpm_values.fpm_values_va = values_mem->va;
 cqp_info->in.u.query_fpm_values.hmc_fn_id = hmc_fn_id;
 cqp_info->cqp_cmd = OP_QUERY_FPM_VALUES;
 cqp_info->post_sq = 1;
 cqp_info->in.u.query_fpm_values.scratch = (uintptr_t)cqp_request;
 status = i40iw_handle_cqp_op(iwdev, cqp_request);
 if (status)
  i40iw_pr_err("CQP-OP Query FPM fail");
 return status;
}
