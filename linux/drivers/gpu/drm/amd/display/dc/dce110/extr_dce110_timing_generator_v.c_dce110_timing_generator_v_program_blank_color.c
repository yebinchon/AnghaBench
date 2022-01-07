
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct tg_color {int color_r_cr; int color_g_y; int color_b_cb; } ;


 int CRTCV_BLACK_COLOR ;
 int CRTC_BLACK_COLOR_B_CB ;
 int CRTC_BLACK_COLOR_G_Y ;
 int CRTC_BLACK_COLOR_R_CR ;
 int dm_read_reg (int ,int ) ;
 int dm_write_reg (int ,int ,int ) ;
 int mmCRTCV_BLACK_COLOR ;
 int set_reg_field_value (int ,int ,int ,int ) ;

__attribute__((used)) static void dce110_timing_generator_v_program_blank_color(
  struct timing_generator *tg,
  const struct tg_color *black_color)
{
 uint32_t addr = mmCRTCV_BLACK_COLOR;
 uint32_t value = dm_read_reg(tg->ctx, addr);

 set_reg_field_value(
  value,
  black_color->color_b_cb,
  CRTCV_BLACK_COLOR,
  CRTC_BLACK_COLOR_B_CB);
 set_reg_field_value(
  value,
  black_color->color_g_y,
  CRTCV_BLACK_COLOR,
  CRTC_BLACK_COLOR_G_Y);
 set_reg_field_value(
  value,
  black_color->color_r_cr,
  CRTCV_BLACK_COLOR,
  CRTC_BLACK_COLOR_R_CR);

 dm_write_reg(tg->ctx, addr, value);
}
