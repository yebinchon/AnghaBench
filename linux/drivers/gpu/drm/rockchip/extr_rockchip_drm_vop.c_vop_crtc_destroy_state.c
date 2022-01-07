
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_crtc_state {int base; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int __drm_atomic_helper_crtc_destroy_state (int *) ;
 int kfree (struct rockchip_crtc_state*) ;
 struct rockchip_crtc_state* to_rockchip_crtc_state (struct drm_crtc_state*) ;

__attribute__((used)) static void vop_crtc_destroy_state(struct drm_crtc *crtc,
       struct drm_crtc_state *state)
{
 struct rockchip_crtc_state *s = to_rockchip_crtc_state(state);

 __drm_atomic_helper_crtc_destroy_state(&s->base);
 kfree(s);
}
