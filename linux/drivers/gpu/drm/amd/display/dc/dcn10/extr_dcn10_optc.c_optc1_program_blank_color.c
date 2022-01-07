
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct tg_color {int color_r_cr; int color_g_y; int color_b_cb; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_BLACK_COLOR ;
 int OTG_BLACK_COLOR_B_CB ;
 int OTG_BLACK_COLOR_G_Y ;
 int OTG_BLACK_COLOR_R_CR ;
 int REG_SET_3 (int ,int ,int ,int ,int ,int ,int ,int ) ;

void optc1_program_blank_color(
  struct timing_generator *optc,
  const struct tg_color *black_color)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_SET_3(OTG_BLACK_COLOR, 0,
   OTG_BLACK_COLOR_B_CB, black_color->color_b_cb,
   OTG_BLACK_COLOR_G_Y, black_color->color_g_y,
   OTG_BLACK_COLOR_R_CR, black_color->color_r_cr);
}
