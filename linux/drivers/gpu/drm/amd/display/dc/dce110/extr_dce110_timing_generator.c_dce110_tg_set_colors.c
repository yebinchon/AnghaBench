
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct tg_color {int dummy; } ;


 int dce110_tg_program_blank_color (struct timing_generator*,struct tg_color const*) ;
 int dce110_tg_set_overscan_color (struct timing_generator*,struct tg_color const*) ;

void dce110_tg_set_colors(struct timing_generator *tg,
 const struct tg_color *blank_color,
 const struct tg_color *overscan_color)
{
 if (blank_color != ((void*)0))
  dce110_tg_program_blank_color(tg, blank_color);
 if (overscan_color != ((void*)0))
  dce110_tg_set_overscan_color(tg, overscan_color);
}
