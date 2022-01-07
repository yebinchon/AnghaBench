
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int tilcdc_crtc_disable (struct drm_crtc*) ;

__attribute__((used)) static void tilcdc_crtc_atomic_disable(struct drm_crtc *crtc,
           struct drm_crtc_state *old_state)
{
 tilcdc_crtc_disable(crtc);
}
