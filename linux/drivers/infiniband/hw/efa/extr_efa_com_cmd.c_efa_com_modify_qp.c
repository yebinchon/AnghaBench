
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_com_modify_qp_params {int sq_drained_async_notify; int sq_psn; int qkey; int cur_qp_state; int qp_state; int qp_handle; int modify_mask; } ;
struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_admin_modify_qp_resp {int dummy; } ;
struct TYPE_2__ {int opcode; } ;
struct efa_admin_modify_qp_cmd {int modify_mask; int qp_handle; int sq_drained_async_notify; int sq_psn; int qkey; int cur_qp_state; int qp_state; TYPE_1__ aq_common_desc; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int EFA_ADMIN_MODIFY_QP ;
 int efa_com_cmd_exec (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ;
 int ibdev_err_ratelimited (int ,char*,int ,int ,int) ;

int efa_com_modify_qp(struct efa_com_dev *edev,
        struct efa_com_modify_qp_params *params)
{
 struct efa_com_admin_queue *aq = &edev->aq;
 struct efa_admin_modify_qp_cmd cmd = {};
 struct efa_admin_modify_qp_resp resp;
 int err;

 cmd.aq_common_desc.opcode = EFA_ADMIN_MODIFY_QP;
 cmd.modify_mask = params->modify_mask;
 cmd.qp_handle = params->qp_handle;
 cmd.qp_state = params->qp_state;
 cmd.cur_qp_state = params->cur_qp_state;
 cmd.qkey = params->qkey;
 cmd.sq_psn = params->sq_psn;
 cmd.sq_drained_async_notify = params->sq_drained_async_notify;

 err = efa_com_cmd_exec(aq,
          (struct efa_admin_aq_entry *)&cmd,
          sizeof(cmd),
          (struct efa_admin_acq_entry *)&resp,
          sizeof(resp));
 if (err) {
  ibdev_err_ratelimited(
   edev->efa_dev,
   "Failed to modify qp-%u modify_mask[%#x] [%d]\n",
   cmd.qp_handle, cmd.modify_mask, err);
  return err;
 }

 return 0;
}
