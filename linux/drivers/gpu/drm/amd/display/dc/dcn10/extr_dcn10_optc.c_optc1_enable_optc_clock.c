
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OPTC_INPUT_CLK_EN ;
 int OPTC_INPUT_CLK_GATE_DIS ;
 int OPTC_INPUT_CLK_ON ;
 int OPTC_INPUT_CLOCK_CONTROL ;
 int OTG_CLOCK_CONTROL ;
 int OTG_CLOCK_EN ;
 int OTG_CLOCK_GATE_DIS ;
 int OTG_CLOCK_ON ;
 int REG_UPDATE_2 (int ,int ,int,int ,int) ;
 int REG_WAIT (int ,int ,int,int,int) ;

void optc1_enable_optc_clock(struct timing_generator *optc, bool enable)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 if (enable) {
  REG_UPDATE_2(OPTC_INPUT_CLOCK_CONTROL,
    OPTC_INPUT_CLK_EN, 1,
    OPTC_INPUT_CLK_GATE_DIS, 1);

  REG_WAIT(OPTC_INPUT_CLOCK_CONTROL,
    OPTC_INPUT_CLK_ON, 1,
    1, 1000);


  REG_UPDATE_2(OTG_CLOCK_CONTROL,
    OTG_CLOCK_EN, 1,
    OTG_CLOCK_GATE_DIS, 1);
  REG_WAIT(OTG_CLOCK_CONTROL,
    OTG_CLOCK_ON, 1,
    1, 1000);
 } else {
  REG_UPDATE_2(OTG_CLOCK_CONTROL,
    OTG_CLOCK_GATE_DIS, 0,
    OTG_CLOCK_EN, 0);

  REG_UPDATE_2(OPTC_INPUT_CLOCK_CONTROL,
    OPTC_INPUT_CLK_GATE_DIS, 0,
    OPTC_INPUT_CLK_EN, 0);
 }
}
