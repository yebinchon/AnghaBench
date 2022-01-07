
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_intf {struct dpu_hw_blk_reg_map hw; } ;


 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,int) ;
 int INTF_TIMING_ENGINE_EN ;

__attribute__((used)) static void dpu_hw_intf_enable_timing_engine(
  struct dpu_hw_intf *intf,
  u8 enable)
{
 struct dpu_hw_blk_reg_map *c = &intf->hw;

 DPU_REG_WRITE(c, INTF_TIMING_ENGINE_EN, enable != 0);
}
