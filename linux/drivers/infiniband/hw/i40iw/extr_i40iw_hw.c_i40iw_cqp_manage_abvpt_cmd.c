
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_8__ {int sc_cqp; } ;
struct i40iw_device {TYPE_4__ cqp; } ;
struct i40iw_apbvt_info {int add; int port; } ;
struct TYPE_5__ {uintptr_t scratch; int * cqp; struct i40iw_apbvt_info info; } ;
struct TYPE_6__ {TYPE_1__ manage_apbvt_entry; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct cqp_commands_info {int post_sq; TYPE_3__ in; int cqp_cmd; } ;
struct i40iw_cqp_request {struct cqp_commands_info info; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IW_ERR_NO_MEMORY ;
 int OP_MANAGE_APBVT_ENTRY ;
 int cpu_to_le16 (int ) ;
 struct i40iw_cqp_request* i40iw_get_cqp_request (TYPE_4__*,int) ;
 int i40iw_handle_cqp_op (struct i40iw_device*,struct i40iw_cqp_request*) ;
 int i40iw_pr_err (char*) ;
 int memset (struct i40iw_apbvt_info*,int ,int) ;

__attribute__((used)) static enum i40iw_status_code
i40iw_cqp_manage_abvpt_cmd(struct i40iw_device *iwdev,
      u16 accel_local_port,
      bool add_port)
{
 struct i40iw_apbvt_info *info;
 struct i40iw_cqp_request *cqp_request;
 struct cqp_commands_info *cqp_info;
 enum i40iw_status_code status;

 cqp_request = i40iw_get_cqp_request(&iwdev->cqp, add_port);
 if (!cqp_request)
  return I40IW_ERR_NO_MEMORY;

 cqp_info = &cqp_request->info;
 info = &cqp_info->in.u.manage_apbvt_entry.info;

 memset(info, 0, sizeof(*info));
 info->add = add_port;
 info->port = cpu_to_le16(accel_local_port);

 cqp_info->cqp_cmd = OP_MANAGE_APBVT_ENTRY;
 cqp_info->post_sq = 1;
 cqp_info->in.u.manage_apbvt_entry.cqp = &iwdev->cqp.sc_cqp;
 cqp_info->in.u.manage_apbvt_entry.scratch = (uintptr_t)cqp_request;
 status = i40iw_handle_cqp_op(iwdev, cqp_request);
 if (status)
  i40iw_pr_err("CQP-OP Manage APBVT entry fail");

 return status;
}
