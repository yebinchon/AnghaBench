
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct efa_com_query_qp_result {int sq_psn; int sq_draining; int qkey; int qp_state; } ;
struct efa_com_query_qp_params {int qp_handle; } ;
struct efa_com_admin_queue {int dummy; } ;
struct efa_com_dev {int efa_dev; struct efa_com_admin_queue aq; } ;
struct efa_admin_query_qp_resp {int sq_psn; int sq_draining; int qkey; int qp_state; } ;
struct TYPE_2__ {int opcode; } ;
struct efa_admin_query_qp_cmd {int qp_handle; TYPE_1__ aq_common_desc; } ;
struct efa_admin_aq_entry {int dummy; } ;
struct efa_admin_acq_entry {int dummy; } ;
typedef int resp ;
typedef int cmd ;


 int EFA_ADMIN_QUERY_QP ;
 int efa_com_cmd_exec (struct efa_com_admin_queue*,struct efa_admin_aq_entry*,int,struct efa_admin_acq_entry*,int) ;
 int ibdev_err_ratelimited (int ,char*,int ,int) ;

int efa_com_query_qp(struct efa_com_dev *edev,
       struct efa_com_query_qp_params *params,
       struct efa_com_query_qp_result *result)
{
 struct efa_com_admin_queue *aq = &edev->aq;
 struct efa_admin_query_qp_cmd cmd = {};
 struct efa_admin_query_qp_resp resp;
 int err;

 cmd.aq_common_desc.opcode = EFA_ADMIN_QUERY_QP;
 cmd.qp_handle = params->qp_handle;

 err = efa_com_cmd_exec(aq,
          (struct efa_admin_aq_entry *)&cmd,
          sizeof(cmd),
          (struct efa_admin_acq_entry *)&resp,
          sizeof(resp));
 if (err) {
  ibdev_err_ratelimited(edev->efa_dev,
          "Failed to query qp-%u [%d]\n",
          cmd.qp_handle, err);
  return err;
 }

 result->qp_state = resp.qp_state;
 result->qkey = resp.qkey;
 result->sq_draining = resp.sq_draining;
 result->sq_psn = resp.sq_psn;

 return 0;
}
