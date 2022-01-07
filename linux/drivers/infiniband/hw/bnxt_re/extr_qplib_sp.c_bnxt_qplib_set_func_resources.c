
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct creq_set_func_resources_resp {int dummy; } ;
struct cmdq_set_func_resources {void* max_gid_per_vf; void* max_cq_per_vf; void* max_srq_per_vf; void* max_mrw_per_vf; void* max_qp_per_vf; void* number_of_cq; void* number_of_srq; void* number_of_mrw; void* number_of_qp; } ;
struct bnxt_qplib_res {TYPE_2__* pdev; } ;
struct bnxt_qplib_rcfw {int dummy; } ;
struct TYPE_3__ {int max_gid_per_vf; int max_cq_per_vf; int max_srq_per_vf; int max_mrw_per_vf; int max_qp_per_vf; } ;
struct bnxt_qplib_ctx {TYPE_1__ vf_res; int cq_count; int srqc_count; int mrw_count; int qpc_count; } ;
struct TYPE_4__ {int dev; } ;


 int RCFW_CMD_PREP (struct cmdq_set_func_resources,int ,int ) ;
 int SET_FUNC_RESOURCES ;
 int bnxt_qplib_rcfw_send_message (struct bnxt_qplib_rcfw*,void*,void*,int *,int ) ;
 void* cpu_to_le32 (int ) ;
 int dev_err (int *,char*) ;

int bnxt_qplib_set_func_resources(struct bnxt_qplib_res *res,
      struct bnxt_qplib_rcfw *rcfw,
      struct bnxt_qplib_ctx *ctx)
{
 struct cmdq_set_func_resources req;
 struct creq_set_func_resources_resp resp;
 u16 cmd_flags = 0;
 int rc = 0;

 RCFW_CMD_PREP(req, SET_FUNC_RESOURCES, cmd_flags);

 req.number_of_qp = cpu_to_le32(ctx->qpc_count);
 req.number_of_mrw = cpu_to_le32(ctx->mrw_count);
 req.number_of_srq = cpu_to_le32(ctx->srqc_count);
 req.number_of_cq = cpu_to_le32(ctx->cq_count);

 req.max_qp_per_vf = cpu_to_le32(ctx->vf_res.max_qp_per_vf);
 req.max_mrw_per_vf = cpu_to_le32(ctx->vf_res.max_mrw_per_vf);
 req.max_srq_per_vf = cpu_to_le32(ctx->vf_res.max_srq_per_vf);
 req.max_cq_per_vf = cpu_to_le32(ctx->vf_res.max_cq_per_vf);
 req.max_gid_per_vf = cpu_to_le32(ctx->vf_res.max_gid_per_vf);

 rc = bnxt_qplib_rcfw_send_message(rcfw, (void *)&req,
       (void *)&resp,
       ((void*)0), 0);
 if (rc) {
  dev_err(&res->pdev->dev, "Failed to set function resources\n");
 }
 return rc;
}
