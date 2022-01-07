
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rockchip_crtc_state {int base; } ;
struct drm_crtc {scalar_t__ state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_reset (struct drm_crtc*,int *) ;
 struct rockchip_crtc_state* kzalloc (int,int ) ;
 int vop_crtc_destroy_state (struct drm_crtc*,scalar_t__) ;

__attribute__((used)) static void vop_crtc_reset(struct drm_crtc *crtc)
{
 struct rockchip_crtc_state *crtc_state =
  kzalloc(sizeof(*crtc_state), GFP_KERNEL);

 if (crtc->state)
  vop_crtc_destroy_state(crtc, crtc->state);

 __drm_atomic_helper_crtc_reset(crtc, &crtc_state->base);
}
