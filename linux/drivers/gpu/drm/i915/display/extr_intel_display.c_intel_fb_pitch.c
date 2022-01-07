
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_framebuffer {int* pitches; } ;
struct TYPE_4__ {TYPE_1__* rotated; } ;
struct TYPE_3__ {int pitch; } ;


 scalar_t__ drm_rotation_90_or_270 (unsigned int) ;
 TYPE_2__* to_intel_framebuffer (struct drm_framebuffer const*) ;

__attribute__((used)) static int intel_fb_pitch(const struct drm_framebuffer *fb, int color_plane,
     unsigned int rotation)
{
 if (drm_rotation_90_or_270(rotation))
  return to_intel_framebuffer(fb)->rotated[color_plane].pitch;
 else
  return fb->pitches[color_plane];
}
