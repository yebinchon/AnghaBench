
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_pingpong {struct dpu_hw_blk_reg_map hw; } ;


 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,int) ;
 int EINVAL ;
 int PP_TEAR_CHECK_EN ;

__attribute__((used)) static int dpu_hw_pp_enable_te(struct dpu_hw_pingpong *pp, bool enable)
{
 struct dpu_hw_blk_reg_map *c;

 if (!pp)
  return -EINVAL;
 c = &pp->hw;

 DPU_REG_WRITE(c, PP_TEAR_CHECK_EN, enable);
 return 0;
}
