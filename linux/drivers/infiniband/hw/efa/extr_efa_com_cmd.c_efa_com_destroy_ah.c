
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_com_destroy_ah_params {int pdn; int ah; } ;
struct efa_admin_destroy_ah_resp {int dummy; } ;
struct TYPE_2__ {int opcode; } ;
struct efa_admin_destroy_ah_cmd {int pd; int ah; TYPE_1__ aq_common_desc; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef int cmd_completion ;
typedef int ah_cmd ;


 int EFA_ADMIN_DESTROY_AH ;
 int efa_com_cmd_exec (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ;
 int ibdev_err_ratelimited (int ,char*,int ,int ,int) ;

int efa_com_destroy_ah(struct efa_com_dev *edev,
         struct efa_com_destroy_ah_params *params)
{
 struct efa_admin_destroy_ah_resp cmd_completion;
 struct efa_admin_destroy_ah_cmd ah_cmd = {};
 struct efa_com_admin_queue *aq = &edev->aq;
 int err;

 ah_cmd.aq_common_desc.opcode = EFA_ADMIN_DESTROY_AH;
 ah_cmd.ah = params->ah;
 ah_cmd.pd = params->pdn;

 err = efa_com_cmd_exec(aq,
          (struct efa_admin_aq_entry *)&ah_cmd,
          sizeof(ah_cmd),
          (struct efa_admin_acq_entry *)&cmd_completion,
          sizeof(cmd_completion));
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to destroy ah-%d pd-%d [%d]\n",
          ah_cmd.ah, ah_cmd.pd, err);
  return err;
 }

 return 0;
}
