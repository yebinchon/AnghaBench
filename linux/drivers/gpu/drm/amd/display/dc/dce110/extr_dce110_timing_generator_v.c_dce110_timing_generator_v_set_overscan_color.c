
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {struct dc_context* ctx; } ;
struct tg_color {int color_r_cr; int color_g_y; int color_b_cb; } ;
struct dc_context {int dummy; } ;


 int CRTCV_OVERSCAN_COLOR ;
 int CRTC_OVERSCAN_COLOR_BLUE ;
 int CRTC_OVERSCAN_COLOR_GREEN ;
 int CRTC_OVERSCAN_COLOR_RED ;
 int dm_write_reg (struct dc_context*,int ,int ) ;
 int mmCRTCV_OVERSCAN_COLOR ;
 int set_reg_field_value (int ,int ,int ,int ) ;

__attribute__((used)) static void dce110_timing_generator_v_set_overscan_color(struct timing_generator *tg,
 const struct tg_color *overscan_color)
{
 struct dc_context *ctx = tg->ctx;
 uint32_t value = 0;
 uint32_t addr;

 set_reg_field_value(
  value,
  overscan_color->color_b_cb,
  CRTCV_OVERSCAN_COLOR,
  CRTC_OVERSCAN_COLOR_BLUE);

 set_reg_field_value(
  value,
  overscan_color->color_g_y,
  CRTCV_OVERSCAN_COLOR,
  CRTC_OVERSCAN_COLOR_GREEN);

 set_reg_field_value(
  value,
  overscan_color->color_r_cr,
  CRTCV_OVERSCAN_COLOR,
  CRTC_OVERSCAN_COLOR_RED);

 addr = mmCRTCV_OVERSCAN_COLOR;
 dm_write_reg(ctx, addr, value);
}
