
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tg_color {int color_b_cb; int color_g_y; int color_r_cr; } ;
struct output_pixel_processor {int dummy; } ;
struct dcn20_opp {int dummy; } ;


 int ASSERT (struct tg_color const*) ;
 int DPG_COLOUR0_B_CB ;
 int DPG_COLOUR0_G_Y ;
 int DPG_COLOUR0_R_CR ;
 int DPG_COLOUR1_B_CB ;
 int DPG_COLOUR1_G_Y ;
 int DPG_COLOUR1_R_CR ;
 int DPG_COLOUR_B_CB ;
 int DPG_COLOUR_G_Y ;
 int DPG_COLOUR_R_CR ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 struct dcn20_opp* TO_DCN20_OPP (struct output_pixel_processor*) ;

void opp2_dpg_set_blank_color(
  struct output_pixel_processor *opp,
  const struct tg_color *color)
{
 struct dcn20_opp *oppn20 = TO_DCN20_OPP(opp);


 ASSERT(color);
 REG_SET_2(DPG_COLOUR_B_CB, 0,
   DPG_COLOUR1_B_CB, color->color_b_cb << 6,
   DPG_COLOUR0_B_CB, color->color_b_cb << 6);
 REG_SET_2(DPG_COLOUR_G_Y, 0,
   DPG_COLOUR1_G_Y, color->color_g_y << 6,
   DPG_COLOUR0_G_Y, color->color_g_y << 6);
 REG_SET_2(DPG_COLOUR_R_CR, 0,
   DPG_COLOUR1_R_CR, color->color_r_cr << 6,
   DPG_COLOUR0_R_CR, color->color_r_cr << 6);
}
