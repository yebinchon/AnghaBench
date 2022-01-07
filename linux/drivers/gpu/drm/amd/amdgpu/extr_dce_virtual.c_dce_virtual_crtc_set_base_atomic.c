
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef enum mode_set_atomic { ____Placeholder_mode_set_atomic } mode_set_atomic ;



__attribute__((used)) static int dce_virtual_crtc_set_base_atomic(struct drm_crtc *crtc,
      struct drm_framebuffer *fb,
      int x, int y, enum mode_set_atomic state)
{
 return 0;
}
