
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {int dummy; } ;


 scalar_t__ I915_STATE_WARN_ON (int) ;
 scalar_t__ drm_crtc_vblank_get (struct drm_crtc*) ;
 int drm_crtc_vblank_put (struct drm_crtc*) ;

__attribute__((used)) static void assert_vblank_disabled(struct drm_crtc *crtc)
{
 if (I915_STATE_WARN_ON(drm_crtc_vblank_get(crtc) == 0))
  drm_crtc_vblank_put(crtc);
}
