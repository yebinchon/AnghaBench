
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct dpu_vbif_set_ot_params {int frame_rate; int height; int width; int xin_id; scalar_t__ rd; int is_wfd; } ;
struct dpu_vbif_dynamic_ot_tbl {size_t count; TYPE_2__* cfg; } ;
struct dpu_hw_vbif {scalar_t__ idx; TYPE_1__* cap; } ;
struct TYPE_4__ {size_t ot_limit; int pps; } ;
struct TYPE_3__ {int features; struct dpu_vbif_dynamic_ot_tbl dynamic_ot_wr_tbl; struct dpu_vbif_dynamic_ot_tbl dynamic_ot_rd_tbl; } ;


 int BIT (int ) ;
 int DPU_DEBUG (char*,scalar_t__,int ,int ,int ,int ,int ,size_t) ;
 int DPU_VBIF_QOS_OTLIM ;
 scalar_t__ VBIF_0 ;

__attribute__((used)) static void _dpu_vbif_apply_dynamic_ot_limit(struct dpu_hw_vbif *vbif,
  u32 *ot_lim, struct dpu_vbif_set_ot_params *params)
{
 u64 pps;
 const struct dpu_vbif_dynamic_ot_tbl *tbl;
 u32 i;

 if (!vbif || !(vbif->cap->features & BIT(DPU_VBIF_QOS_OTLIM)))
  return;


 if (!params->is_wfd)
  return;

 pps = params->frame_rate;
 pps *= params->width;
 pps *= params->height;

 tbl = params->rd ? &vbif->cap->dynamic_ot_rd_tbl :
   &vbif->cap->dynamic_ot_wr_tbl;

 for (i = 0; i < tbl->count; i++) {
  if (pps <= tbl->cfg[i].pps) {
   *ot_lim = tbl->cfg[i].ot_limit;
   break;
  }
 }

 DPU_DEBUG("vbif:%d xin:%d w:%d h:%d fps:%d pps:%llu ot:%u\n",
   vbif->idx - VBIF_0, params->xin_id,
   params->width, params->height, params->frame_rate,
   pps, *ot_lim);
}
