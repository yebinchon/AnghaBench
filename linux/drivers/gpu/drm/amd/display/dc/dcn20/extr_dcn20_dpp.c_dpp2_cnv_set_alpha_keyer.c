
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpp {int dummy; } ;
struct dcn20_dpp {int dummy; } ;
struct cnv_color_keyer_params {int color_keyer_blue_high; int color_keyer_blue_low; int color_keyer_green_high; int color_keyer_green_low; int color_keyer_red_high; int color_keyer_red_low; int color_keyer_alpha_high; int color_keyer_alpha_low; int color_keyer_mode; int color_keyer_en; } ;


 int COLOR_KEYER_ALPHA ;
 int COLOR_KEYER_ALPHA_HIGH ;
 int COLOR_KEYER_ALPHA_LOW ;
 int COLOR_KEYER_BLUE ;
 int COLOR_KEYER_BLUE_HIGH ;
 int COLOR_KEYER_BLUE_LOW ;
 int COLOR_KEYER_CONTROL ;
 int COLOR_KEYER_EN ;
 int COLOR_KEYER_GREEN ;
 int COLOR_KEYER_GREEN_HIGH ;
 int COLOR_KEYER_GREEN_LOW ;
 int COLOR_KEYER_MODE ;
 int COLOR_KEYER_RED ;
 int COLOR_KEYER_RED_HIGH ;
 int COLOR_KEYER_RED_LOW ;
 int REG_UPDATE (int ,int ,int ) ;
 struct dcn20_dpp* TO_DCN20_DPP (struct dpp*) ;

void dpp2_cnv_set_alpha_keyer(
  struct dpp *dpp_base,
  struct cnv_color_keyer_params *color_keyer)
{
 struct dcn20_dpp *dpp = TO_DCN20_DPP(dpp_base);

 REG_UPDATE(COLOR_KEYER_CONTROL, COLOR_KEYER_EN, color_keyer->color_keyer_en);

 REG_UPDATE(COLOR_KEYER_CONTROL, COLOR_KEYER_MODE, color_keyer->color_keyer_mode);

 REG_UPDATE(COLOR_KEYER_ALPHA, COLOR_KEYER_ALPHA_LOW, color_keyer->color_keyer_alpha_low);
 REG_UPDATE(COLOR_KEYER_ALPHA, COLOR_KEYER_ALPHA_HIGH, color_keyer->color_keyer_alpha_high);

 REG_UPDATE(COLOR_KEYER_RED, COLOR_KEYER_RED_LOW, color_keyer->color_keyer_red_low);
 REG_UPDATE(COLOR_KEYER_RED, COLOR_KEYER_RED_HIGH, color_keyer->color_keyer_red_high);

 REG_UPDATE(COLOR_KEYER_GREEN, COLOR_KEYER_GREEN_LOW, color_keyer->color_keyer_green_low);
 REG_UPDATE(COLOR_KEYER_GREEN, COLOR_KEYER_GREEN_HIGH, color_keyer->color_keyer_green_high);

 REG_UPDATE(COLOR_KEYER_BLUE, COLOR_KEYER_BLUE_LOW, color_keyer->color_keyer_blue_low);
 REG_UPDATE(COLOR_KEYER_BLUE, COLOR_KEYER_BLUE_HIGH, color_keyer->color_keyer_blue_high);
}
