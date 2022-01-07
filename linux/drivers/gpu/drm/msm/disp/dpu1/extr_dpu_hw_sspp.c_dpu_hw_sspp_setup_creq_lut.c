
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct dpu_hw_pipe_qos_cfg {int creq_lut; } ;
struct dpu_hw_pipe {int hw; TYPE_1__* cap; } ;
struct TYPE_2__ {int features; } ;


 int DPU_REG_WRITE (int *,scalar_t__,int) ;
 int DPU_SSPP_QOS_8LVL ;
 int DPU_SSPP_SRC ;
 scalar_t__ SSPP_CREQ_LUT ;
 scalar_t__ SSPP_CREQ_LUT_0 ;
 scalar_t__ SSPP_CREQ_LUT_1 ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,scalar_t__*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void dpu_hw_sspp_setup_creq_lut(struct dpu_hw_pipe *ctx,
  struct dpu_hw_pipe_qos_cfg *cfg)
{
 u32 idx;

 if (_sspp_subblk_offset(ctx, DPU_SSPP_SRC, &idx))
  return;

 if (ctx->cap && test_bit(DPU_SSPP_QOS_8LVL, &ctx->cap->features)) {
  DPU_REG_WRITE(&ctx->hw, SSPP_CREQ_LUT_0 + idx, cfg->creq_lut);
  DPU_REG_WRITE(&ctx->hw, SSPP_CREQ_LUT_1 + idx,
    cfg->creq_lut >> 32);
 } else {
  DPU_REG_WRITE(&ctx->hw, SSPP_CREQ_LUT + idx, cfg->creq_lut);
 }
}
