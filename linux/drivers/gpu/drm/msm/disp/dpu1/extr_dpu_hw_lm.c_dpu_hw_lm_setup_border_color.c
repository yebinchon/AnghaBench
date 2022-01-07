
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct dpu_mdss_color {int color_0; int color_1; int color_2; int color_3; } ;
struct dpu_hw_blk_reg_map {int dummy; } ;
struct dpu_hw_mixer {struct dpu_hw_blk_reg_map hw; } ;


 int DPU_REG_WRITE (struct dpu_hw_blk_reg_map*,int ,int) ;
 int LM_BORDER_COLOR_0 ;
 int LM_BORDER_COLOR_1 ;

__attribute__((used)) static void dpu_hw_lm_setup_border_color(struct dpu_hw_mixer *ctx,
  struct dpu_mdss_color *color,
  u8 border_en)
{
 struct dpu_hw_blk_reg_map *c = &ctx->hw;

 if (border_en) {
  DPU_REG_WRITE(c, LM_BORDER_COLOR_0,
   (color->color_0 & 0xFFF) |
   ((color->color_1 & 0xFFF) << 0x10));
  DPU_REG_WRITE(c, LM_BORDER_COLOR_1,
   (color->color_2 & 0xFFF) |
   ((color->color_3 & 0xFFF) << 0x10));
 }
}
