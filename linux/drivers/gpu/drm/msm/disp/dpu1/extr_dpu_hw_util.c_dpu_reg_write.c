
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dpu_hw_blk_reg_map {int log_mask; scalar_t__ blk_off; scalar_t__ base_off; } ;


 int DPU_DEBUG_DRIVER (char*,char const*,scalar_t__,scalar_t__) ;
 int dpu_hw_util_log_mask ;
 int writel_relaxed (scalar_t__,scalar_t__) ;

void dpu_reg_write(struct dpu_hw_blk_reg_map *c,
  u32 reg_off,
  u32 val,
  const char *name)
{

 if (c->log_mask & dpu_hw_util_log_mask)
  DPU_DEBUG_DRIVER("[%s:0x%X] <= 0x%X\n",
    name, c->blk_off + reg_off, val);
 writel_relaxed(val, c->base_off + c->blk_off + reg_off);
}
