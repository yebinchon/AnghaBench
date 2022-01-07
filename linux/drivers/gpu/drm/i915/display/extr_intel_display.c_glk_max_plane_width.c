
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {int modifier; TYPE_1__* format; } ;
struct TYPE_2__ {int* cpp; } ;
 int MISSING_CASE (int) ;

__attribute__((used)) static int glk_max_plane_width(const struct drm_framebuffer *fb,
          int color_plane,
          unsigned int rotation)
{
 int cpp = fb->format->cpp[color_plane];

 switch (fb->modifier) {
 case 133:
 case 132:
  if (cpp == 8)
   return 4096;
  else
   return 5120;
 case 130:
 case 128:

 case 131:
 case 129:
  if (cpp == 8)
   return 2048;
  else
   return 5120;
 default:
  MISSING_CASE(fb->modifier);
  return 2048;
 }
}
