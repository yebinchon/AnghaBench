
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct drm_crtc* crtc; } ;
struct vkms_plane_state {struct vkms_plane_state* composer; int fb; TYPE_1__ base; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int __drm_atomic_helper_plane_destroy_state (struct drm_plane_state*) ;
 int drm_framebuffer_put (int *) ;
 scalar_t__ drm_framebuffer_read_refcount (int *) ;
 int kfree (struct vkms_plane_state*) ;
 struct vkms_plane_state* to_vkms_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void vkms_plane_destroy_state(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct vkms_plane_state *vkms_state = to_vkms_plane_state(old_state);
 struct drm_crtc *crtc = vkms_state->base.crtc;

 if (crtc) {



  if (drm_framebuffer_read_refcount(&vkms_state->composer->fb))
   drm_framebuffer_put(&vkms_state->composer->fb);
 }

 kfree(vkms_state->composer);
 vkms_state->composer = ((void*)0);

 __drm_atomic_helper_plane_destroy_state(old_state);
 kfree(vkms_state);
}
