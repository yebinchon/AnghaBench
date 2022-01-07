
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct i40iw_sc_qp {int push_idx; int qs_handle; } ;
struct TYPE_13__ {int sc_cqp; } ;
struct i40iw_device {TYPE_6__ cqp; } ;
struct TYPE_12__ {int op_ret_val; } ;
struct TYPE_8__ {scalar_t__ free_page; int qs_handle; } ;
struct TYPE_9__ {uintptr_t scratch; int * cqp; TYPE_1__ info; } ;
struct TYPE_10__ {TYPE_2__ manage_push_page; } ;
struct TYPE_11__ {TYPE_3__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_4__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {TYPE_5__ compl_info; struct cqp_commands_info info; int refcount; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_INVALID_PUSH_PAGE_INDEX ;
 int OP_MANAGE_PUSH_PAGE ;
 int atomic_inc (int *) ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (TYPE_6__*,int) ;
 int i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_pr_err (char*) ;
 int i40iw_put_cqp_request (TYPE_6__*,struct i40iw_cqp_request*) ;

__attribute__((used)) static void i40iw_alloc_push_page(struct i40iw_device *iwdev, struct i40iw_sc_qp *qp)
{
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;
 enum i40iw_status_code status;

 if (qp->push_idx != I40IW_INVALID_PUSH_PAGE_INDEX)
  return;

 cqp_request = i40iw_get_cqp_request(&iwdev->cqp, 1);
 if (!cqp_request)
  return;

 atomic_inc(&cqp_request->refcount);

 cqp_info = &cqp_request->info;
 cqp_info->cqp_cmd = OP_MANAGE_PUSH_PAGE;
 cqp_info->post_sq = 1;

 cqp_info->in.u.manage_push_page.info.qs_handle = qp->qs_handle;
 cqp_info->in.u.manage_push_page.info.free_page = 0;
 cqp_info->in.u.manage_push_page.cqp = &iwdev->cqp.sc_cqp;
 cqp_info->in.u.manage_push_page.scratch = (uintptr_t)cqp_request;

 status = i40iw_handle_cqp_op(iwdev, cqp_request);
 if (!status)
  qp->push_idx = cqp_request->compl_info.op_ret_val;
 else
  i40iw_pr_err("CQP-OP Push page fail");
 i40iw_put_cqp_request(&iwdev->cqp, cqp_request);
}
