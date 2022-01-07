
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int pixel_blend_mode; TYPE_2__* fb; } ;
struct intel_plane_state {TYPE_3__ base; } ;
struct TYPE_5__ {TYPE_1__* format; } ;
struct TYPE_4__ {int has_alpha; } ;





 int MISSING_CASE (int) ;
 int PLANE_COLOR_ALPHA_DISABLE ;
 int PLANE_COLOR_ALPHA_HW_PREMULTIPLY ;
 int PLANE_COLOR_ALPHA_SW_PREMULTIPLY ;

__attribute__((used)) static u32 glk_plane_color_ctl_alpha(const struct intel_plane_state *plane_state)
{
 if (!plane_state->base.fb->format->has_alpha)
  return PLANE_COLOR_ALPHA_DISABLE;

 switch (plane_state->base.pixel_blend_mode) {
 case 129:
  return PLANE_COLOR_ALPHA_DISABLE;
 case 128:
  return PLANE_COLOR_ALPHA_SW_PREMULTIPLY;
 case 130:
  return PLANE_COLOR_ALPHA_HW_PREMULTIPLY;
 default:
  MISSING_CASE(plane_state->base.pixel_blend_mode);
  return PLANE_COLOR_ALPHA_DISABLE;
 }
}
