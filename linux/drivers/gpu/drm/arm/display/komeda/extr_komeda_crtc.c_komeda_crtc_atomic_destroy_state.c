
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int __drm_atomic_helper_crtc_destroy_state (struct drm_crtc_state*) ;
 int kfree (int ) ;
 int to_kcrtc_st (struct drm_crtc_state*) ;

__attribute__((used)) static void komeda_crtc_atomic_destroy_state(struct drm_crtc *crtc,
          struct drm_crtc_state *state)
{
 __drm_atomic_helper_crtc_destroy_state(state);
 kfree(to_kcrtc_st(state));
}
