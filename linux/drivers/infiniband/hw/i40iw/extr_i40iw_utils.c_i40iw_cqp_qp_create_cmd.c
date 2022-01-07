
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct i40iw_sc_qp {int dummy; } ;
struct i40iw_sc_dev {scalar_t__ back_dev; } ;
struct i40iw_cqp {int dummy; } ;
struct i40iw_device {struct i40iw_cqp cqp; } ;
struct i40iw_create_qp_info {int cq_num_valid; int next_iwarp_state; } ;
struct TYPE_4__ {uintptr_t scratch; struct i40iw_sc_qp* qp; struct i40iw_create_qp_info info; } ;
struct TYPE_5__ {TYPE_1__ qp_create; } ;
struct TYPE_6__ {TYPE_2__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_3__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {struct cqp_commands_info info; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_NO_MEMORY ;
 int I40IW_QP_STATE_RTS ;
 int OP_QP_CREATE ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (struct i40iw_cqp*,int) ;
 int i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_pr_err (char*) ;
 int memset (struct i40iw_create_qp_info*,int ,int) ;

enum i40iw_status_code i40iw_cqp_qp_create_cmd(struct i40iw_sc_dev *dev,
            struct i40iw_sc_qp *qp)
{
 struct i40iw_device *iwdev = (struct i40iw_device *)dev->back_dev;
 struct i40iw_cqp *iwcqp = &iwdev->cqp;
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;
 struct i40iw_create_qp_info *qp_info;
 enum i40iw_status_code status;

 cqp_request = i40iw_get_cqp_request(iwcqp, 1);
 if (!cqp_request)
  return I40IW_ERR_NO_MEMORY;

 cqp_info = &cqp_request->info;
 qp_info = &cqp_request->info.in.u.qp_create.info;

 memset(qp_info, 0, sizeof(*qp_info));

 qp_info->cq_num_valid = 1;
 qp_info->next_iwarp_state = I40IW_QP_STATE_RTS;

 cqp_info->cqp_cmd = OP_QP_CREATE;
 cqp_info->post_sq = 1;
 cqp_info->in.u.qp_create.qp = qp;
 cqp_info->in.u.qp_create.scratch = (uintptr_t)cqp_request;
 status = i40iw_handle_cqp_op(iwdev, cqp_request);
 if (status)
  i40iw_pr_err("CQP-OP QP create fail");
 return status;
}
