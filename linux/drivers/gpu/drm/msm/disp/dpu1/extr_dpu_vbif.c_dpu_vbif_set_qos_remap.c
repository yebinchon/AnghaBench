
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dpu_vbif_set_qos_params {scalar_t__ vbif_idx; int clk_ctrl; int xin_id; scalar_t__ is_rt; } ;
struct dpu_vbif_qos_tbl {int npriority_lvl; int * priority_lvl; } ;
struct dpu_kms {struct dpu_hw_vbif** hw_vbif; struct dpu_hw_mdp* hw_mdp; } ;
struct TYPE_5__ {int (* set_qos_remap ) (struct dpu_hw_vbif*,int ,int,int ) ;} ;
struct dpu_hw_vbif {scalar_t__ idx; TYPE_2__ ops; TYPE_1__* cap; } ;
struct TYPE_6__ {int (* setup_clk_force_ctrl ) (struct dpu_hw_mdp*,int ,int) ;} ;
struct dpu_hw_mdp {TYPE_3__ ops; } ;
struct TYPE_4__ {struct dpu_vbif_qos_tbl qos_nrt_tbl; struct dpu_vbif_qos_tbl qos_rt_tbl; } ;


 int ARRAY_SIZE (struct dpu_hw_vbif**) ;
 int DPU_DEBUG (char*,...) ;
 int DPU_ERROR (char*,...) ;
 int stub1 (struct dpu_hw_mdp*,int ,int) ;
 int stub2 (struct dpu_hw_vbif*,int ,int,int ) ;
 int stub3 (struct dpu_hw_mdp*,int ,int) ;

void dpu_vbif_set_qos_remap(struct dpu_kms *dpu_kms,
  struct dpu_vbif_set_qos_params *params)
{
 struct dpu_hw_vbif *vbif = ((void*)0);
 struct dpu_hw_mdp *mdp;
 bool forced_on = 0;
 const struct dpu_vbif_qos_tbl *qos_tbl;
 int i;

 if (!dpu_kms || !params || !dpu_kms->hw_mdp) {
  DPU_ERROR("invalid arguments\n");
  return;
 }
 mdp = dpu_kms->hw_mdp;

 for (i = 0; i < ARRAY_SIZE(dpu_kms->hw_vbif); i++) {
  if (dpu_kms->hw_vbif[i] &&
    dpu_kms->hw_vbif[i]->idx == params->vbif_idx) {
   vbif = dpu_kms->hw_vbif[i];
   break;
  }
 }

 if (!vbif || !vbif->cap) {
  DPU_ERROR("invalid vbif %d\n", params->vbif_idx);
  return;
 }

 if (!vbif->ops.set_qos_remap || !mdp->ops.setup_clk_force_ctrl) {
  DPU_DEBUG("qos remap not supported\n");
  return;
 }

 qos_tbl = params->is_rt ? &vbif->cap->qos_rt_tbl :
   &vbif->cap->qos_nrt_tbl;

 if (!qos_tbl->npriority_lvl || !qos_tbl->priority_lvl) {
  DPU_DEBUG("qos tbl not defined\n");
  return;
 }

 forced_on = mdp->ops.setup_clk_force_ctrl(mdp, params->clk_ctrl, 1);

 for (i = 0; i < qos_tbl->npriority_lvl; i++) {
  DPU_DEBUG("vbif:%d xin:%d lvl:%d/%d\n",
    params->vbif_idx, params->xin_id, i,
    qos_tbl->priority_lvl[i]);
  vbif->ops.set_qos_remap(vbif, params->xin_id, i,
    qos_tbl->priority_lvl[i]);
 }

 if (forced_on)
  mdp->ops.setup_clk_force_ctrl(mdp, params->clk_ctrl, 0);
}
