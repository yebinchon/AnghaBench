
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct drm_encoder {int dummy; } ;
struct TYPE_2__ {int (* get_pending_flush ) (struct dpu_hw_ctl*) ;int (* trigger_flush ) (struct dpu_hw_ctl*) ;int (* update_pending_flush ) (struct dpu_hw_ctl*,int ) ;} ;
struct dpu_hw_ctl {int idx; TYPE_1__ ops; } ;
struct dpu_encoder_phys {int intf_idx; struct dpu_hw_ctl* hw_ctl; int hw_pp; } ;


 int DPU_ERROR (char*) ;
 int DRMID (struct drm_encoder*) ;
 int UINT_MAX ;
 int dpu_encoder_phys_inc_pending (struct dpu_encoder_phys*) ;
 int stub1 (struct dpu_hw_ctl*,int ) ;
 int stub2 (struct dpu_hw_ctl*) ;
 int stub3 (struct dpu_hw_ctl*) ;
 int trace_dpu_enc_trigger_flush (int ,int ,int,int ,int ,int ) ;

__attribute__((used)) static void _dpu_encoder_trigger_flush(struct drm_encoder *drm_enc,
  struct dpu_encoder_phys *phys, uint32_t extra_flush_bits)
{
 struct dpu_hw_ctl *ctl;
 int pending_kickoff_cnt;
 u32 ret = UINT_MAX;

 if (!phys->hw_pp) {
  DPU_ERROR("invalid pingpong hw\n");
  return;
 }

 ctl = phys->hw_ctl;
 if (!ctl || !ctl->ops.trigger_flush) {
  DPU_ERROR("missing trigger cb\n");
  return;
 }

 pending_kickoff_cnt = dpu_encoder_phys_inc_pending(phys);

 if (extra_flush_bits && ctl->ops.update_pending_flush)
  ctl->ops.update_pending_flush(ctl, extra_flush_bits);

 ctl->ops.trigger_flush(ctl);

 if (ctl->ops.get_pending_flush)
  ret = ctl->ops.get_pending_flush(ctl);

 trace_dpu_enc_trigger_flush(DRMID(drm_enc), phys->intf_idx,
        pending_kickoff_cnt, ctl->idx,
        extra_flush_bits, ret);
}
