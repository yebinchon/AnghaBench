
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct vkms_crtc_state {struct drm_crtc_state base; int composer_work; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 int INIT_WORK (int *,int ) ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct vkms_crtc_state* kzalloc (int,int ) ;
 int vkms_composer_worker ;

__attribute__((used)) static struct drm_crtc_state *
vkms_atomic_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct vkms_crtc_state *vkms_state;

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 vkms_state = kzalloc(sizeof(*vkms_state), GFP_KERNEL);
 if (!vkms_state)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &vkms_state->base);

 INIT_WORK(&vkms_state->composer_work, vkms_composer_worker);

 return &vkms_state->base;
}
