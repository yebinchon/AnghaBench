
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct malidp_crtc_state {int dummy; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int __drm_atomic_helper_crtc_destroy_state (struct drm_crtc_state*) ;
 int kfree (struct malidp_crtc_state*) ;
 struct malidp_crtc_state* to_malidp_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static void malidp_crtc_destroy_state(struct drm_crtc *crtc,
          struct drm_crtc_state *state)
{
 struct malidp_crtc_state *mali_state = ((void*)0);

 if (state) {
  mali_state = to_malidp_crtc_state(state);
  __drm_atomic_helper_crtc_destroy_state(state);
 }

 kfree(mali_state);
}
