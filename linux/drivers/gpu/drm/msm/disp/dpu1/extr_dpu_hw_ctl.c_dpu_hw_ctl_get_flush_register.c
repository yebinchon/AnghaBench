
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_ctl {struct dpu_hw_blk_reg_map hw; } ;


 int CTL_FLUSH ;
 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;

__attribute__((used)) static inline u32 dpu_hw_ctl_get_flush_register(struct dpu_hw_ctl *ctx)
{
 struct dpu_hw_blk_reg_map *c = &ctx->hw;

 return DPU_REG_READ(c, CTL_FLUSH);
}
