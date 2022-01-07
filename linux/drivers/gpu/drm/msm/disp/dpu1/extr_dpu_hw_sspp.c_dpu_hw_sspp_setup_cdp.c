
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_pipe_cdp_cfg {scalar_t__ preload_ahead; scalar_t__ tile_amortize_enable; scalar_t__ ubwc_meta_enable; scalar_t__ enable; } ;
struct dpu_hw_pipe {int hw; } ;


 int BIT (int) ;
 int DPU_REG_WRITE (int *,int ,int ) ;
 scalar_t__ DPU_SSPP_CDP_PRELOAD_AHEAD_64 ;
 int DPU_SSPP_SRC ;
 int SSPP_CDP_CNTL ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,int *) ;

__attribute__((used)) static void dpu_hw_sspp_setup_cdp(struct dpu_hw_pipe *ctx,
  struct dpu_hw_pipe_cdp_cfg *cfg)
{
 u32 idx;
 u32 cdp_cntl = 0;

 if (!ctx || !cfg)
  return;

 if (_sspp_subblk_offset(ctx, DPU_SSPP_SRC, &idx))
  return;

 if (cfg->enable)
  cdp_cntl |= BIT(0);
 if (cfg->ubwc_meta_enable)
  cdp_cntl |= BIT(1);
 if (cfg->tile_amortize_enable)
  cdp_cntl |= BIT(2);
 if (cfg->preload_ahead == DPU_SSPP_CDP_PRELOAD_AHEAD_64)
  cdp_cntl |= BIT(3);

 DPU_REG_WRITE(&ctx->hw, SSPP_CDP_CNTL, cdp_cntl);
}
