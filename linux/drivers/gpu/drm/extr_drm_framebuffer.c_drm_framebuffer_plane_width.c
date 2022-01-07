
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_framebuffer {TYPE_1__* format; } ;
struct TYPE_2__ {int num_planes; } ;


 int fb_plane_width (int,TYPE_1__*,int) ;

int drm_framebuffer_plane_width(int width,
    const struct drm_framebuffer *fb, int plane)
{
 if (plane >= fb->format->num_planes)
  return 0;

 return fb_plane_width(width, fb->format, plane);
}
