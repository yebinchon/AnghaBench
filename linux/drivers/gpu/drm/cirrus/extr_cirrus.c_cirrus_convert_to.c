
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {int* pitches; int width; TYPE_1__* format; } ;
struct TYPE_2__ {int* cpp; } ;


 int CIRRUS_MAX_PITCH ;

__attribute__((used)) static int cirrus_convert_to(struct drm_framebuffer *fb)
{
 if (fb->format->cpp[0] == 4 && fb->pitches[0] > CIRRUS_MAX_PITCH) {
  if (fb->width * 3 <= CIRRUS_MAX_PITCH)

   return 3;
  else

   return 2;
 }
 return 0;
}
