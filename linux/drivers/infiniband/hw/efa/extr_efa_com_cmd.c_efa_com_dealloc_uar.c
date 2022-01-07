
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_com_dealloc_uar_params {int uarn; } ;
struct efa_admin_dealloc_uar_resp {int dummy; } ;
struct TYPE_2__ {int opcode; } ;
struct efa_admin_dealloc_uar_cmd {int uar; TYPE_1__ aq_common_descriptor; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int EFA_ADMIN_DEALLOC_UAR ;
 int efa_com_cmd_exec (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ;
 int ibdev_err_ratelimited (int ,char*,int ,int) ;

int efa_com_dealloc_uar(struct efa_com_dev *edev,
   struct efa_com_dealloc_uar_params *params)
{
 struct efa_com_admin_queue *aq = &edev->aq;
 struct efa_admin_dealloc_uar_cmd cmd = {};
 struct efa_admin_dealloc_uar_resp resp;
 int err;

 cmd.aq_common_descriptor.opcode = EFA_ADMIN_DEALLOC_UAR;
 cmd.uar = params->uarn;

 err = efa_com_cmd_exec(aq,
          (struct efa_admin_aq_entry *)&cmd,
          sizeof(cmd),
          (struct efa_admin_acq_entry *)&resp,
          sizeof(resp));
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to deallocate uar-%u [%d]\n",
          cmd.uar, err);
  return err;
 }

 return 0;
}
