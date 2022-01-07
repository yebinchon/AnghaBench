
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int GSL0_READY_SOURCE_SEL ;
 int GSL1_READY_SOURCE_SEL ;
 int GSL2_READY_SOURCE_SEL ;
 int GSL_SOURCE_SELECT ;
 int REG_UPDATE (int ,int ,int ) ;

void optc2_set_gsl_source_select(
  struct timing_generator *optc,
  int group_idx,
  uint32_t gsl_ready_signal)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 switch (group_idx) {
 case 1:
  REG_UPDATE(GSL_SOURCE_SELECT, GSL0_READY_SOURCE_SEL, gsl_ready_signal);
  break;
 case 2:
  REG_UPDATE(GSL_SOURCE_SELECT, GSL1_READY_SOURCE_SEL, gsl_ready_signal);
  break;
 case 3:
  REG_UPDATE(GSL_SOURCE_SELECT, GSL2_READY_SOURCE_SEL, gsl_ready_signal);
  break;
 default:
  break;
 }
}
