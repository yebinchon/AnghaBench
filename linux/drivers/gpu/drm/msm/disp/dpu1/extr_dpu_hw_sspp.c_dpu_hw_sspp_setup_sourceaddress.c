
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {int * plane_addr; } ;
struct dpu_hw_pipe_cfg {TYPE_1__ layout; } ;
struct dpu_hw_pipe {int hw; } ;
typedef enum dpu_sspp_multirect_index { ____Placeholder_dpu_sspp_multirect_index } dpu_sspp_multirect_index ;


 int ARRAY_SIZE (int *) ;
 int DPU_REG_WRITE (int *,scalar_t__,int ) ;
 int DPU_SSPP_RECT_0 ;
 int DPU_SSPP_RECT_SOLO ;
 int DPU_SSPP_SRC ;
 scalar_t__ SSPP_SRC0_ADDR ;
 scalar_t__ SSPP_SRC1_ADDR ;
 scalar_t__ SSPP_SRC2_ADDR ;
 scalar_t__ SSPP_SRC3_ADDR ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,scalar_t__*) ;

__attribute__((used)) static void dpu_hw_sspp_setup_sourceaddress(struct dpu_hw_pipe *ctx,
  struct dpu_hw_pipe_cfg *cfg,
  enum dpu_sspp_multirect_index rect_mode)
{
 int i;
 u32 idx;

 if (_sspp_subblk_offset(ctx, DPU_SSPP_SRC, &idx))
  return;

 if (rect_mode == DPU_SSPP_RECT_SOLO) {
  for (i = 0; i < ARRAY_SIZE(cfg->layout.plane_addr); i++)
   DPU_REG_WRITE(&ctx->hw, SSPP_SRC0_ADDR + idx + i * 0x4,
     cfg->layout.plane_addr[i]);
 } else if (rect_mode == DPU_SSPP_RECT_0) {
  DPU_REG_WRITE(&ctx->hw, SSPP_SRC0_ADDR + idx,
    cfg->layout.plane_addr[0]);
  DPU_REG_WRITE(&ctx->hw, SSPP_SRC2_ADDR + idx,
    cfg->layout.plane_addr[2]);
 } else {
  DPU_REG_WRITE(&ctx->hw, SSPP_SRC1_ADDR + idx,
    cfg->layout.plane_addr[0]);
  DPU_REG_WRITE(&ctx->hw, SSPP_SRC3_ADDR + idx,
    cfg->layout.plane_addr[2]);
 }
}
