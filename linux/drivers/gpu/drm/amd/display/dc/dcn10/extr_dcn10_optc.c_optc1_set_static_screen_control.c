
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct optc {int dummy; } ;


 struct optc* DCN10TG_FROM_TG (struct timing_generator*) ;
 int OTG_STATIC_SCREEN_CONTROL ;
 int OTG_STATIC_SCREEN_EVENT_MASK ;
 int OTG_STATIC_SCREEN_FRAME_COUNT ;
 int REG_SET_2 (int ,int ,int ,int,int ,int) ;
 int STATIC_SCREEN_EVENT_MASK_RANGETIMING_DOUBLE_BUFFER_UPDATE_EN ;

void optc1_set_static_screen_control(
 struct timing_generator *optc,
 uint32_t value)
{
 struct optc *optc1 = DCN10TG_FROM_TG(optc);




 if ((value & STATIC_SCREEN_EVENT_MASK_RANGETIMING_DOUBLE_BUFFER_UPDATE_EN)
   != 0)
  value = value &
  ~STATIC_SCREEN_EVENT_MASK_RANGETIMING_DOUBLE_BUFFER_UPDATE_EN;

 REG_SET_2(OTG_STATIC_SCREEN_CONTROL, 0,
   OTG_STATIC_SCREEN_EVENT_MASK, value,
   OTG_STATIC_SCREEN_FRAME_COUNT, 2);
}
