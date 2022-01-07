
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u32 ;
struct dpu_hw_pipe {int hw; } ;


 scalar_t__ DPU_REG_READ (int *,scalar_t__) ;
 int DPU_REG_WRITE (int *,scalar_t__,scalar_t__) ;
 int DPU_SSPP_CSC_10BIT ;
 scalar_t__ SSPP_VIG_CSC_10_OP_MODE ;
 scalar_t__ _sspp_subblk_offset (struct dpu_hw_pipe*,int ,scalar_t__*) ;

__attribute__((used)) static void _sspp_setup_csc10_opmode(struct dpu_hw_pipe *ctx,
  u32 mask, u8 en)
{
 u32 idx;
 u32 opmode;

 if (_sspp_subblk_offset(ctx, DPU_SSPP_CSC_10BIT, &idx))
  return;

 opmode = DPU_REG_READ(&ctx->hw, SSPP_VIG_CSC_10_OP_MODE + idx);
 if (en)
  opmode |= mask;
 else
  opmode &= ~mask;

 DPU_REG_WRITE(&ctx->hw, SSPP_VIG_CSC_10_OP_MODE + idx, opmode);
}
