
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_com_alloc_pd_result {int pdn; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_alloc_pd_resp {int pd; } ;
struct TYPE_2__ {int opcode; } ;
struct efa_admin_alloc_pd_cmd {TYPE_1__ aq_common_descriptor; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int EFA_ADMIN_ALLOC_PD ;
 int efa_com_cmd_exec (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ;
 int ibdev_err_ratelimited (int ,char*,int) ;

int efa_com_alloc_pd(struct efa_com_dev *edev,
       struct efa_com_alloc_pd_result *result)
{
 struct efa_com_admin_queue *aq = &edev->aq;
 struct efa_admin_alloc_pd_cmd cmd = {};
 struct efa_admin_alloc_pd_resp resp;
 int err;

 cmd.aq_common_descriptor.opcode = EFA_ADMIN_ALLOC_PD;

 err = efa_com_cmd_exec(aq,
          (struct efa_admin_aq_entry *)&cmd,
          sizeof(cmd),
          (struct efa_admin_acq_entry *)&resp,
          sizeof(resp));
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to allocate pd[%d]\n", err);
  return err;
 }

 result->pdn = resp.pd;

 return 0;
}
