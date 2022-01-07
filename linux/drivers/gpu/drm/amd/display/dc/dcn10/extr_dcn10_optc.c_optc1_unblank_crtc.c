
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_BLANK_CONTROL ;
 int OTG_BLANK_DATA_EN ;
 int OTG_BLANK_DE_MODE ;
 int REG_UPDATE_2 (int ,int ,int ,int ,int ) ;
 int optc1_clear_optc_underflow (struct timing_generator*) ;

__attribute__((used)) static void optc1_unblank_crtc(struct timing_generator *optc)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 REG_UPDATE_2(OTG_BLANK_CONTROL,
   OTG_BLANK_DATA_EN, 0,
   OTG_BLANK_DE_MODE, 0);
 optc1_clear_optc_underflow(optc);
}
