
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpu_hw_pipe {int hw; } ;
typedef enum dpu_sspp_multirect_index { ____Placeholder_dpu_sspp_multirect_index } dpu_sspp_multirect_index ;


 int DPU_REG_WRITE (int *,scalar_t__,scalar_t__) ;
 int DPU_SSPP_RECT_0 ;
 int DPU_SSPP_RECT_SOLO ;
 int DPU_SSPP_SRC ;
 scalar_t__ SSPP_SRC_CONSTANT_COLOR ;
 scalar_t__ SSPP_SRC_CONSTANT_COLOR_REC1 ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,scalar_t__*) ;

__attribute__((used)) static void dpu_hw_sspp_setup_solidfill(struct dpu_hw_pipe *ctx, u32 color, enum
  dpu_sspp_multirect_index rect_index)
{
 u32 idx;

 if (_sspp_subblk_offset(ctx, DPU_SSPP_SRC, &idx))
  return;

 if (rect_index == DPU_SSPP_RECT_SOLO || rect_index == DPU_SSPP_RECT_0)
  DPU_REG_WRITE(&ctx->hw, SSPP_SRC_CONSTANT_COLOR + idx, color);
 else
  DPU_REG_WRITE(&ctx->hw, SSPP_SRC_CONSTANT_COLOR_REC1 + idx,
    color);
}
