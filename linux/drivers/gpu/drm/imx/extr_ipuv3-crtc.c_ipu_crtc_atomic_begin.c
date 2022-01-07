
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_vblank_on (struct drm_crtc*) ;

__attribute__((used)) static void ipu_crtc_atomic_begin(struct drm_crtc *crtc,
      struct drm_crtc_state *old_crtc_state)
{
 drm_crtc_vblank_on(crtc);
}
