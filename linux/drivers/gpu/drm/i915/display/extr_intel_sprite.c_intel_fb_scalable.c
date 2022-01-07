
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_2__ {int format; } ;




__attribute__((used)) static bool intel_fb_scalable(const struct drm_framebuffer *fb)
{
 if (!fb)
  return 0;

 switch (fb->format->format) {
 case 128:
  return 0;
 default:
  return 1;
 }
}
