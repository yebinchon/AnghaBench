
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_com_create_ah_result {int ah; } ;
struct efa_com_create_ah_params {int pdn; int dest_addr; } ;
struct efa_admin_create_ah_resp {int ah; } ;
struct TYPE_2__ {int opcode; } ;
struct efa_admin_create_ah_cmd {int dest_addr; int pd; TYPE_1__ aq_common_desc; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef int cmd_completion ;
typedef int ah_cmd ;


 int EFA_ADMIN_CREATE_AH ;
 int efa_com_cmd_exec (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ;
 int ibdev_err_ratelimited (int ,char*,int ,int) ;
 int memcpy (int ,int ,int) ;

int efa_com_create_ah(struct efa_com_dev *edev,
        struct efa_com_create_ah_params *params,
        struct efa_com_create_ah_result *result)
{
 struct efa_admin_create_ah_resp cmd_completion;
 struct efa_com_admin_queue *aq = &edev->aq;
 struct efa_admin_create_ah_cmd ah_cmd = {};
 int err;

 ah_cmd.aq_common_desc.opcode = EFA_ADMIN_CREATE_AH;

 memcpy(ah_cmd.dest_addr, params->dest_addr, sizeof(ah_cmd.dest_addr));
 ah_cmd.pd = params->pdn;

 err = efa_com_cmd_exec(aq,
          (struct efa_admin_aq_entry *)&ah_cmd,
          sizeof(ah_cmd),
          (struct efa_admin_acq_entry *)&cmd_completion,
          sizeof(cmd_completion));
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to create ah for %pI6 [%d]\n",
          ah_cmd.dest_addr, err);
  return err;
 }

 result->ah = cmd_completion.ah;

 return 0;
}
