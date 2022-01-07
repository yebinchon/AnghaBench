
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {int idx; struct dpu_hw_blk_reg_map hw; } ;


 int CTL_SW_RESET ;
 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int DPU_REG_RESET_TIMEOUT_US ;
 int EINVAL ;
 scalar_t__ dpu_hw_ctl_poll_reset_status (struct dpu_hw_ctl*,int ) ;
 int pr_debug (char*,int ) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int dpu_hw_ctl_wait_reset_status(struct dpu_hw_ctl *ctx)
{
 struct dpu_hw_blk_reg_map *c = &ctx->hw;
 u32 status;

 status = DPU_REG_READ(c, CTL_SW_RESET);
 status &= 0x01;
 if (!status)
  return 0;

 pr_debug("hw ctl reset is set for ctl:%d\n", ctx->idx);
 if (dpu_hw_ctl_poll_reset_status(ctx, DPU_REG_RESET_TIMEOUT_US)) {
  pr_err("hw recovery is not complete for ctl:%d\n", ctx->idx);
  return -EINVAL;
 }

 return 0;
}
