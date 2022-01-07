
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct atmel_hlcdc_crtc_state {int dummy; } ;


 int __drm_atomic_helper_crtc_destroy_state (struct drm_crtc_state*) ;
 struct atmel_hlcdc_crtc_state* drm_crtc_state_to_atmel_hlcdc_crtc_state (struct drm_crtc_state*) ;
 int kfree (struct atmel_hlcdc_crtc_state*) ;

__attribute__((used)) static void atmel_hlcdc_crtc_destroy_state(struct drm_crtc *crtc,
        struct drm_crtc_state *s)
{
 struct atmel_hlcdc_crtc_state *state;

 state = drm_crtc_state_to_atmel_hlcdc_crtc_state(s);
 __drm_atomic_helper_crtc_destroy_state(s);
 kfree(state);
}
