
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpu_hw_pipe_qos_cfg {int safe_lut; int danger_lut; } ;
struct dpu_hw_pipe {int hw; } ;


 int DPU_REG_WRITE (int *,scalar_t__,int ) ;
 int DPU_SSPP_SRC ;
 scalar_t__ SSPP_DANGER_LUT ;
 scalar_t__ SSPP_SAFE_LUT ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,scalar_t__*) ;

__attribute__((used)) static void dpu_hw_sspp_setup_danger_safe_lut(struct dpu_hw_pipe *ctx,
  struct dpu_hw_pipe_qos_cfg *cfg)
{
 u32 idx;

 if (_sspp_subblk_offset(ctx, DPU_SSPP_SRC, &idx))
  return;

 DPU_REG_WRITE(&ctx->hw, SSPP_DANGER_LUT + idx, cfg->danger_lut);
 DPU_REG_WRITE(&ctx->hw, SSPP_SAFE_LUT + idx, cfg->safe_lut);
}
