
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timing_generator {int dummy; } ;
struct dce110_timing_generator {int dummy; } ;


 int CRTC0_CRTC_STATIC_SCREEN_CONTROL ;
 int CRTC_REG_UPDATE_2 (int ,int ,int ,int ,int) ;
 int CRTC_STATIC_SCREEN_EVENT_MASK ;
 int CRTC_STATIC_SCREEN_FRAME_COUNT ;
 struct dce110_timing_generator* DCE110TG_FROM_TG (struct timing_generator*) ;

__attribute__((used)) static void dce120_timing_generator_set_static_screen_control(
 struct timing_generator *tg,
 uint32_t value)
{
 struct dce110_timing_generator *tg110 = DCE110TG_FROM_TG(tg);

 CRTC_REG_UPDATE_2(CRTC0_CRTC_STATIC_SCREEN_CONTROL,
   CRTC_STATIC_SCREEN_EVENT_MASK, value,
   CRTC_STATIC_SCREEN_FRAME_COUNT, 2);
}
