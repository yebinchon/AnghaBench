
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dc_crtc_timing {scalar_t__ display_color_depth; } ;


 scalar_t__ COLOR_DEPTH_888 ;

__attribute__((used)) static void reduce_mode_colour_depth(struct dc_crtc_timing *timing_out)
{
 if (timing_out->display_color_depth <= COLOR_DEPTH_888)
  return;

 timing_out->display_color_depth--;
}
