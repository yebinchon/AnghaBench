
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int (* update_pending_flush ) (struct dpu_hw_ctl*,int ) ;int (* get_bitmask_intf ) (struct dpu_hw_ctl*,int *,int ) ;} ;
struct dpu_hw_ctl {TYPE_1__ ops; } ;
struct dpu_encoder_phys {int intf_idx; struct dpu_hw_ctl* hw_ctl; int hw_pp; } ;


 int DPU_ERROR (char*,int) ;
 int _dpu_encoder_phys_cmd_pingpong_config (struct dpu_encoder_phys*) ;
 int dpu_encoder_helper_split_config (struct dpu_encoder_phys*,int ) ;
 int dpu_encoder_phys_cmd_is_master (struct dpu_encoder_phys*) ;
 int stub1 (struct dpu_hw_ctl*,int *,int ) ;
 int stub2 (struct dpu_hw_ctl*,int ) ;

__attribute__((used)) static void dpu_encoder_phys_cmd_enable_helper(
  struct dpu_encoder_phys *phys_enc)
{
 struct dpu_hw_ctl *ctl;
 u32 flush_mask = 0;

 if (!phys_enc || !phys_enc->hw_ctl || !phys_enc->hw_pp) {
  DPU_ERROR("invalid arg(s), encoder %d\n", phys_enc != 0);
  return;
 }

 dpu_encoder_helper_split_config(phys_enc, phys_enc->intf_idx);

 _dpu_encoder_phys_cmd_pingpong_config(phys_enc);

 if (!dpu_encoder_phys_cmd_is_master(phys_enc))
  return;

 ctl = phys_enc->hw_ctl;
 ctl->ops.get_bitmask_intf(ctl, &flush_mask, phys_enc->intf_idx);
 ctl->ops.update_pending_flush(ctl, flush_mask);
}
