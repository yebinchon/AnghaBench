
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int drm_crtc_vblank_on (struct drm_crtc*) ;
 int komeda_crtc_do_flush (struct drm_crtc*,struct drm_crtc_state*) ;
 int komeda_crtc_prepare (int ) ;
 int to_kcrtc (struct drm_crtc*) ;

__attribute__((used)) static void
komeda_crtc_atomic_enable(struct drm_crtc *crtc,
     struct drm_crtc_state *old)
{
 komeda_crtc_prepare(to_kcrtc(crtc));
 drm_crtc_vblank_on(crtc);
 komeda_crtc_do_flush(crtc, old);
}
