
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_VERTICAL_INTERRUPT2_LINE_START ;
 int OTG_VERTICAL_INTERRUPT2_POSITION ;
 int REG_SET (int ,int ,int ,int ) ;

void optc1_setup_vertical_interrupt2(
  struct timing_generator *optc,
  uint32_t start_line)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_SET(OTG_VERTICAL_INTERRUPT2_POSITION, 0,
   OTG_VERTICAL_INTERRUPT2_LINE_START, start_line);
}
