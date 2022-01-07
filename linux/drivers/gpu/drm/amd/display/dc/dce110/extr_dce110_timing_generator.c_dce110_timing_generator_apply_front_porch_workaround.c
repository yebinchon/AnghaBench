
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timing_generator {int dummy; } ;
struct TYPE_2__ {int INTERLACE; } ;
struct dc_crtc_timing {int v_front_porch; TYPE_1__ flags; } ;



__attribute__((used)) static void dce110_timing_generator_apply_front_porch_workaround(
 struct timing_generator *tg,
 struct dc_crtc_timing *timing)
{
 if (timing->flags.INTERLACE == 1) {
  if (timing->v_front_porch < 2)
   timing->v_front_porch = 2;
 } else {
  if (timing->v_front_porch < 1)
   timing->v_front_porch = 1;
 }
}
