
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_intf {struct dpu_hw_blk_reg_map hw; } ;


 int DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int INTF_LINE_COUNT ;

__attribute__((used)) static u32 dpu_hw_intf_get_line_count(struct dpu_hw_intf *intf)
{
 struct dpu_hw_blk_reg_map *c;

 if (!intf)
  return 0;

 c = &intf->hw;

 return DPU_REG_READ(c, INTF_LINE_COUNT);
}
