
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_com_destroy_qp_params {int qp_handle; } ;
struct efa_admin_destroy_qp_resp {int dummy; } ;
struct TYPE_2__ {int opcode; } ;
struct efa_admin_destroy_qp_cmd {int qp_handle; TYPE_1__ aq_common_desc; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef int qp_cmd ;
typedef int cmd_completion ;


 int EFA_ADMIN_DESTROY_QP ;
 int efa_com_cmd_exec (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ;
 int ibdev_err_ratelimited (int ,char*,int ,int) ;

int efa_com_destroy_qp(struct efa_com_dev *edev,
         struct efa_com_destroy_qp_params *params)
{
 struct efa_admin_destroy_qp_resp cmd_completion;
 struct efa_admin_destroy_qp_cmd qp_cmd = {};
 struct efa_com_admin_queue *aq = &edev->aq;
 int err;

 qp_cmd.aq_common_desc.opcode = EFA_ADMIN_DESTROY_QP;
 qp_cmd.qp_handle = params->qp_handle;

 err = efa_com_cmd_exec(aq,
          (struct efa_admin_aq_entry *)&qp_cmd,
          sizeof(qp_cmd),
          (struct efa_admin_acq_entry *)&cmd_completion,
          sizeof(cmd_completion));
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to destroy qp-%u [%d]\n",
          qp_cmd.qp_handle, err);
  return err;
 }

 return 0;
}
