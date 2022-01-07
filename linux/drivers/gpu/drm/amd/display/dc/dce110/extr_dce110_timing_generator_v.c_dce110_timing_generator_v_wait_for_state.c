
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;
typedef enum crtc_state { ____Placeholder_crtc_state } crtc_state ;




 int dce110_timing_generator_v_wait_for_vactive (struct timing_generator*) ;
 int dce110_timing_generator_v_wait_for_vblank (struct timing_generator*) ;

__attribute__((used)) static void dce110_timing_generator_v_wait_for_state(struct timing_generator *tg,
 enum crtc_state state)
{
 switch (state) {
 case 128:
  dce110_timing_generator_v_wait_for_vblank(tg);
  break;

 case 129:
  dce110_timing_generator_v_wait_for_vactive(tg);
  break;

 default:
  break;
 }
}
