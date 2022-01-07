
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
struct gsl_params {int gsl_window_end_y; int gsl_window_start_y; int gsl_window_end_x; int gsl_window_start_x; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_GSL_WINDOW_END_X ;
 int OTG_GSL_WINDOW_END_Y ;
 int OTG_GSL_WINDOW_START_X ;
 int OTG_GSL_WINDOW_START_Y ;
 int OTG_GSL_WINDOW_X ;
 int OTG_GSL_WINDOW_Y ;
 int REG_SET_2 (int ,int ,int ,int ,int ,int ) ;

void optc2_set_gsl_window(struct timing_generator *optc,
     const struct gsl_params *params)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_SET_2(OTG_GSL_WINDOW_X, 0,
  OTG_GSL_WINDOW_START_X, params->gsl_window_start_x,
  OTG_GSL_WINDOW_END_X, params->gsl_window_end_x);
 REG_SET_2(OTG_GSL_WINDOW_Y, 0,
  OTG_GSL_WINDOW_START_Y, params->gsl_window_start_y,
  OTG_GSL_WINDOW_END_Y, params->gsl_window_end_y);
}
