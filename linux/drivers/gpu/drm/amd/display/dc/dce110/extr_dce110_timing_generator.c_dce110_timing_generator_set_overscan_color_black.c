
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {struct dc_context* ctx; } ;
struct tg_color {int color_g_y; int color_r_cr; int color_b_cb; } ;
struct dce110_timing_generator {int dummy; } ;
struct dc_context {int dummy; } ;


 int CRTC_OVERSCAN_COLOR ;
 int CRTC_OVERSCAN_COLOR_BLUE ;
 int CRTC_OVERSCAN_COLOR_GREEN ;
 int CRTC_OVERSCAN_COLOR_RED ;
 int CRTC_REG (int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int mmCRTC_BLACK_COLOR ;
 int mmCRTC_BLANK_DATA_COLOR ;
 int mmCRTC_OVERSCAN_COLOR ;
 int set_reg_field_value (int ,int ,int ,int ) ;

void dce110_timing_generator_set_overscan_color_black(
 struct timing_generator *tg,
 const struct tg_color *color)
{
 struct dc_context *ctx = tg->ctx;
 uint32_t addr;
 uint32_t value = 0;
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 set_reg_field_value(
   value,
   color->color_b_cb,
   CRTC_OVERSCAN_COLOR,
   CRTC_OVERSCAN_COLOR_BLUE);

 set_reg_field_value(
   value,
   color->color_r_cr,
   CRTC_OVERSCAN_COLOR,
   CRTC_OVERSCAN_COLOR_RED);

 set_reg_field_value(
   value,
   color->color_g_y,
   CRTC_OVERSCAN_COLOR,
   CRTC_OVERSCAN_COLOR_GREEN);

 addr = CRTC_REG(mmCRTC_OVERSCAN_COLOR);
 dm_write_reg(ctx, addr, value);
 addr = CRTC_REG(mmCRTC_BLACK_COLOR);
 dm_write_reg(ctx, addr, value);




 addr = CRTC_REG(mmCRTC_BLANK_DATA_COLOR);
 dm_write_reg(ctx, addr, value);
}
