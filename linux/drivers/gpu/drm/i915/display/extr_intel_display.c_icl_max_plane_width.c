
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;



__attribute__((used)) static int icl_max_plane_width(const struct drm_framebuffer *fb,
          int color_plane,
          unsigned int rotation)
{
 return 5120;
}
