
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;



__attribute__((used)) static int dce_virtual_crtc_set_base(struct drm_crtc *crtc, int x, int y,
      struct drm_framebuffer *old_fb)
{
 return 0;
}
