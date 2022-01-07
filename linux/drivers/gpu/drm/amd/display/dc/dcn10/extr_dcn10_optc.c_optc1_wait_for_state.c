
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;
typedef enum crtc_state { ____Placeholder_crtc_state } crtc_state ;




 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_STATUS ;
 int OTG_V_ACTIVE_DISP ;
 int OTG_V_BLANK ;
 int REG_WAIT (int ,int ,int,int,int) ;

void optc1_wait_for_state(struct timing_generator *optc,
  enum crtc_state state)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);

 switch (state) {
 case 128:
  REG_WAIT(OTG_STATUS,
    OTG_V_BLANK, 1,
    1, 100000);
  break;

 case 129:
  REG_WAIT(OTG_STATUS,
    OTG_V_ACTIVE_DISP, 1,
    1, 100000);
  break;

 default:
  break;
 }
}
