
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intf_status {void* frame_count; void* line_count; void* is_en; } ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_intf {struct dpu_hw_blk_reg_map hw; } ;


 void* DPU_REG_READ (struct dpu_hw_blk_reg_map*,int ) ;
 int INTF_FRAME_COUNT ;
 int INTF_LINE_COUNT ;
 int INTF_TIMING_ENGINE_EN ;

__attribute__((used)) static void dpu_hw_intf_get_status(
  struct dpu_hw_intf *intf,
  struct intf_status *s)
{
 struct dpu_hw_blk_reg_map *c = &intf->hw;

 s->is_en = DPU_REG_READ(c, INTF_TIMING_ENGINE_EN);
 if (s->is_en) {
  s->frame_count = DPU_REG_READ(c, INTF_FRAME_COUNT);
  s->line_count = DPU_REG_READ(c, INTF_LINE_COUNT);
 } else {
  s->line_count = 0;
  s->frame_count = 0;
 }
}
