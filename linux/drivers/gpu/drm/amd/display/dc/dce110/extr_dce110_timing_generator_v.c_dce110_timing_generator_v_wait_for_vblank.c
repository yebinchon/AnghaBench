
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timing_generator {int dummy; } ;


 int dce110_timing_generator_v_is_counter_moving (struct timing_generator*) ;
 scalar_t__ dce110_timing_generator_v_is_in_vertical_blank (struct timing_generator*) ;

__attribute__((used)) static void dce110_timing_generator_v_wait_for_vblank(struct timing_generator *tg)
{




 while (dce110_timing_generator_v_is_in_vertical_blank(tg)) {
  if (!dce110_timing_generator_v_is_counter_moving(tg)) {

   break;
  }
 }

 while (!dce110_timing_generator_v_is_in_vertical_blank(tg)) {
  if (!dce110_timing_generator_v_is_counter_moving(tg)) {

   break;
  }
 }
}
