
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


 int CRTC0_CRTC_BLACK_COLOR ;
 int CRTC_BLACK_COLOR_B_CB ;
 int CRTC_BLACK_COLOR_G_Y ;
 int CRTC_BLACK_COLOR_R_CR ;
 int CRTC_REG_UPDATE_3 (int ,int ,int ,int ,int ,int ,int ) ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;
 int dm_read_reg_soc15 (int ,int ,int ) ;
 int dm_write_reg_soc15 (int ,int ,int ,int ) ;
 int mmCRTC0_CRTC_BLACK_COLOR ;
 int mmCRTC0_CRTC_BLANK_DATA_COLOR ;

void dce120_tg_program_blank_color(struct timing_generator *tg,
 const struct tg_color *black_color)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);
 uint32_t value = 0;

 CRTC_REG_UPDATE_3(
  CRTC0_CRTC_BLACK_COLOR,
  CRTC_BLACK_COLOR_B_CB, black_color->color_b_cb,
  CRTC_BLACK_COLOR_G_Y, black_color->color_g_y,
  CRTC_BLACK_COLOR_R_CR, black_color->color_r_cr);

 value = dm_read_reg_soc15(
    tg->ctx,
    mmCRTC0_CRTC_BLACK_COLOR,
    tg110->offsets.crtc);
 dm_write_reg_soc15(
  tg->ctx,
  mmCRTC0_CRTC_BLANK_DATA_COLOR,
  tg110->offsets.crtc,
  value);
}
