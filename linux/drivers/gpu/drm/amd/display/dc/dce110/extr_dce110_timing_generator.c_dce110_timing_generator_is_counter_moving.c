
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timing_generator {TYPE_1__* funcs; } ;
struct crtc_position {scalar_t__ horizontal_count; scalar_t__ vertical_count; } ;
struct TYPE_2__ {int (* get_position ) (struct timing_generator*,struct crtc_position*) ;} ;


 int stub1 (struct timing_generator*,struct crtc_position*) ;
 int stub2 (struct timing_generator*,struct crtc_position*) ;

bool dce110_timing_generator_is_counter_moving(struct timing_generator *tg)
{
 struct crtc_position position1, position2;

 tg->funcs->get_position(tg, &position1);
 tg->funcs->get_position(tg, &position2);

 if (position1.horizontal_count == position2.horizontal_count &&
  position1.vertical_count == position2.vertical_count)
  return 0;
 else
  return 1;
}
