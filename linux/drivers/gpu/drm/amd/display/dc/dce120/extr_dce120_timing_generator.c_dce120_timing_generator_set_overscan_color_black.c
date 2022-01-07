
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timing_generator {int ctx; } ;
struct tg_color {int color_r_cr; int color_g_y; int color_b_cb; } ;
struct TYPE_2__ {int crtc; } ;
struct dce110_timing_generator {TYPE_1__ offsets; } ;


 int CRTC0_CRTC_OVERSCAN_COLOR ;
 int CRTC_OVERSCAN_COLOR_BLUE ;
 int CRTC_OVERSCAN_COLOR_GREEN ;
 int CRTC_OVERSCAN_COLOR_RED ;
 int CRTC_REG_SET_3 (int ,int ,int ,int ,int ,int ,int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg_soc15 (int ,int ,int ) ;
 int dm_write_reg_soc15 (int ,int ,int ,int ) ;
 int mmCRTC0_CRTC_BLACK_COLOR ;
 int mmCRTC0_CRTC_BLANK_DATA_COLOR ;
 int mmCRTC0_CRTC_OVERSCAN_COLOR ;

void dce120_timing_generator_set_overscan_color_black(
 struct timing_generator *tg,
 const struct tg_color *color)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value = 0;
 CRTC_REG_SET_3(
  CRTC0_CRTC_OVERSCAN_COLOR,
  CRTC_OVERSCAN_COLOR_BLUE, color->color_b_cb,
  CRTC_OVERSCAN_COLOR_GREEN, color->color_g_y,
  CRTC_OVERSCAN_COLOR_RED, color->color_r_cr);

 value = dm_read_reg_soc15(
   tg->ctx,
   mmCRTC0_CRTC_OVERSCAN_COLOR,
   tg110->offsets.crtc);

 dm_write_reg_soc15(
   tg->ctx,
   mmCRTC0_CRTC_BLACK_COLOR,
   tg110->offsets.crtc,
   value);





 dm_write_reg_soc15(
  tg->ctx,
  mmCRTC0_CRTC_BLANK_DATA_COLOR,
  tg110->offsets.crtc,
  value);
}
