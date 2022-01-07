
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vkms_crtc_state {struct vkms_crtc_state* active_planes; int composer_work; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int WARN_ON (int ) ;
 int __drm_atomic_helper_crtc_destroy_state (struct drm_crtc_state*) ;
 int kfree (struct vkms_crtc_state*) ;
 struct vkms_crtc_state* to_vkms_crtc_state (struct drm_crtc_state*) ;
 int work_pending (int *) ;

__attribute__((used)) static void vkms_atomic_crtc_destroy_state(struct drm_crtc *crtc,
        struct drm_crtc_state *state)
{
 struct vkms_crtc_state *vkms_state = to_vkms_crtc_state(state);

 __drm_atomic_helper_crtc_destroy_state(state);

 WARN_ON(work_pending(&vkms_state->composer_work));
 kfree(vkms_state->active_planes);
 kfree(vkms_state);
}
