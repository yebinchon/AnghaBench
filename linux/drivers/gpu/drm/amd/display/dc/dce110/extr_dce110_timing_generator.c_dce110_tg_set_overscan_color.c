
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {struct dc_context* ctx; } ;
struct tg_color {int color_r_cr; int color_g_y; int color_b_cb; } ;
struct dce110_timing_generator {int dummy; } ;
struct dc_context {int dummy; } ;


 int CRTC_OVERSCAN_COLOR ;
 int CRTC_OVERSCAN_COLOR_BLUE ;
 int CRTC_OVERSCAN_COLOR_GREEN ;
 int CRTC_OVERSCAN_COLOR_RED ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int mmCRTC_OVERSCAN_COLOR ;
 int set_reg_field_value (int ,int ,int ,int ) ;

void dce110_tg_set_overscan_color(struct timing_generator *tg,
 const struct tg_color *overscan_color)
{
 struct dc_context *ctx = tg->ctx;
 uint32_t value = 0;
 uint32_t addr;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 set_reg_field_value(
  value,
  overscan_color->color_b_cb,
  CRTC_OVERSCAN_COLOR,
  CRTC_OVERSCAN_COLOR_BLUE);

 set_reg_field_value(
  value,
  overscan_color->color_g_y,
  CRTC_OVERSCAN_COLOR,
  CRTC_OVERSCAN_COLOR_GREEN);

 set_reg_field_value(
  value,
  overscan_color->color_r_cr,
  CRTC_OVERSCAN_COLOR,
  CRTC_OVERSCAN_COLOR_RED);

 addr = CRTC_REG(mmCRTC_OVERSCAN_COLOR);
 dm_write_reg(ctx, addr, value);
}
