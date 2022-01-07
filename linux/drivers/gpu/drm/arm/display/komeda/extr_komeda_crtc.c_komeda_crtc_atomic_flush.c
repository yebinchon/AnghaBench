
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int state; } ;


 scalar_t__ drm_atomic_crtc_needs_modeset (int ) ;
 int komeda_crtc_do_flush (struct drm_crtc*,struct drm_crtc_state*) ;

__attribute__((used)) static void
komeda_crtc_atomic_flush(struct drm_crtc *crtc,
    struct drm_crtc_state *old)
{

 if (drm_atomic_crtc_needs_modeset(crtc->state))
  return;

 komeda_crtc_do_flush(crtc, old);
}
