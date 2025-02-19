
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40iw_sc_dev {int dummy; } ;
struct i40iw_device {int cqp; scalar_t__ reset; struct i40iw_sc_dev sc_dev; } ;
struct cqp_commands_info {int cqp_cmd; } ;
struct i40iw_cqp_request {scalar_t__ waiting; struct cqp_commands_info info; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_CQP_COMPL_ERROR ;
 int i40iw_free_cqp_request (int *,struct i40iw_cqp_request*) ;
 int i40iw_pr_err (char*,int ) ;
 int i40iw_process_cqp_cmd (struct i40iw_sc_dev*,struct cqp_commands_info*) ;
 int i40iw_wait_event (struct i40iw_device*,struct i40iw_cqp_request*) ;

enum i40iw_status_code i40iw_handle_cqp_op(struct i40iw_device *iwdev,
        struct i40iw_cqp_request
        *cqp_request)
{
 struct i40iw_sc_dev *dev = &iwdev->sc_dev;
 enum i40iw_status_code status;
 struct cqp_commands_info *info = &cqp_request->info;
 int err_code = 0;

 if (iwdev->reset) {
  i40iw_free_cqp_request(&iwdev->cqp, cqp_request);
  return I40IW_ERR_CQP_COMPL_ERROR;
 }

 status = i40iw_process_cqp_cmd(dev, info);
 if (status) {
  i40iw_pr_err("error cqp command 0x%x failed\n", info->cqp_cmd);
  i40iw_free_cqp_request(&iwdev->cqp, cqp_request);
  return status;
 }
 if (cqp_request->waiting)
  err_code = i40iw_wait_event(iwdev, cqp_request);
 if (err_code)
  status = I40IW_ERR_CQP_COMPL_ERROR;
 return status;
}
