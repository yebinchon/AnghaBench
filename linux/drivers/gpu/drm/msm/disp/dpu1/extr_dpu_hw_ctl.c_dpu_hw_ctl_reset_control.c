
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {int idx; struct dpu_hw_blk_reg_map hw; } ;


 int CTL_SW_RESET ;
 int DPU_REG_RESET_TIMEOUT_US ;
 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,int) ;
 int EINVAL ;
 scalar_t__ dpu_hw_ctl_poll_reset_status (struct dpu_hw_ctl*,int ) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static int dpu_hw_ctl_reset_control(struct dpu_hw_ctl *ctx)
{
 struct dpu_hw_blk_reg_map *c = &ctx->hw;

 pr_debug("issuing hw ctl reset for ctl:%d\n", ctx->idx);
 DPU_REG_WRITE(c, CTL_SW_RESET, 0x1);
 if (dpu_hw_ctl_poll_reset_status(ctx, DPU_REG_RESET_TIMEOUT_US))
  return -EINVAL;

 return 0;
}
