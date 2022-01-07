
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vkms_crtc_state {int composer_work; int base; } ;
struct drm_crtc {scalar_t__ state; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 int __drm_atomic_helper_crtc_reset (struct drm_crtc*,int *) ;
 struct vkms_crtc_state* kzalloc (int,int ) ;
 int vkms_atomic_crtc_destroy_state (struct drm_crtc*,scalar_t__) ;
 int vkms_composer_worker ;

__attribute__((used)) static void vkms_atomic_crtc_reset(struct drm_crtc *crtc)
{
 struct vkms_crtc_state *vkms_state =
  kzalloc(sizeof(*vkms_state), GFP_KERNEL);

 if (crtc->state)
  vkms_atomic_crtc_destroy_state(crtc, crtc->state);

 __drm_atomic_helper_crtc_reset(crtc, &vkms_state->base);
 if (vkms_state)
  INIT_WORK(&vkms_state->composer_work, vkms_composer_worker);
}
