
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {struct dpu_hw_blk_reg_map hw; } ;
typedef int ktime_t ;


 int CTL_SW_RESET ;
 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int ktime_add_us (int ,int) ;
 scalar_t__ ktime_compare_safe (int ,int ) ;
 int ktime_get () ;
 int usleep_range (int,int) ;

__attribute__((used)) static u32 dpu_hw_ctl_poll_reset_status(struct dpu_hw_ctl *ctx, u32 timeout_us)
{
 struct dpu_hw_blk_reg_map *c = &ctx->hw;
 ktime_t timeout;
 u32 status;

 timeout = ktime_add_us(ktime_get(), timeout_us);





 do {
  status = DPU_REG_READ(c, CTL_SW_RESET);
  status &= 0x1;
  if (status)
   usleep_range(20, 50);
 } while (status && ktime_compare_safe(ktime_get(), timeout) < 0);

 return status;
}
