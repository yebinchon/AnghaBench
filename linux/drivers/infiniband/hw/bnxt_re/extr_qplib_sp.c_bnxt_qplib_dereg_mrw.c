
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct creq_deregister_mr_resp {int dummy; } ;
struct cmdq_deregister_mr {int lkey; } ;
struct bnxt_qplib_res {int pdev; struct bnxt_qplib_rcfw* rcfw; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
struct TYPE_2__ {scalar_t__ max_elements; } ;
struct bnxt_qplib_mrw {TYPE_1__ hwq; scalar_t__ total_size; scalar_t__ va; int lkey; } ;


 int DEREGISTER_MR ;
 int RCFW_CMD_PREP (struct cmdq_deregister_mr,int ,int ) ;
 int bnxt_qplib_free_hwq (int ,TYPE_1__*) ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int) ;
 int cpu_to_le32 (int ) ;

int bnxt_qplib_dereg_mrw(struct bnxt_qplib_res *res, struct bnxt_qplib_mrw *mrw,
    bool block)
{
 struct bnxt_qplib_rcfw *rcfw = res->rcfw;
 struct cmdq_deregister_mr req;
 struct creq_deregister_mr_resp resp;
 u16 cmd_flags = 0;
 int rc;

 RCFW_CMD_PREP(req, DEREGISTER_MR, cmd_flags);

 req.lkey = cpu_to_le32(mrw->lkey);
 rc = bnxt_qplib_rcfw_send_message(rcfw, (void *)&req,
       (void *)&resp, ((void*)0), block);
 if (rc)
  return rc;


 if (mrw->hwq.max_elements) {
  mrw->va = 0;
  mrw->total_size = 0;
  bnxt_qplib_free_hwq(res->pdev, &mrw->hwq);
 }

 return 0;
}
