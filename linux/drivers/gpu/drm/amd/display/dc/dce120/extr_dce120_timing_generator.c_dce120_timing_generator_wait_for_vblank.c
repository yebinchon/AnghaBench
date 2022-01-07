
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timing_generator {TYPE_1__* funcs; } ;
struct TYPE_2__ {int (* is_counter_moving ) (struct timing_generator*) ;} ;


 scalar_t__ dce120_timing_generator_is_in_vertical_blank (struct timing_generator*) ;
 int stub1 (struct timing_generator*) ;
 int stub2 (struct timing_generator*) ;

void dce120_timing_generator_wait_for_vblank(struct timing_generator *tg)
{




 while (dce120_timing_generator_is_in_vertical_blank(tg)) {
  if (!tg->funcs->is_counter_moving(tg)) {

   break;
  }
 }

 while (!dce120_timing_generator_is_in_vertical_blank(tg)) {
  if (!tg->funcs->is_counter_moving(tg)) {

   break;
  }
 }
}
