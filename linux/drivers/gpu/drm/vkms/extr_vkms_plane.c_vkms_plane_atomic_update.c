
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vkms_plane_state {struct vkms_composer* composer; } ;
struct vkms_composer {int cpp; int pitch; int offset; int fb; int dst; int src; } ;
struct drm_rect {int dummy; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {TYPE_2__* state; } ;
struct drm_framebuffer {TYPE_1__* format; int * pitches; int * offsets; } ;
struct TYPE_4__ {struct drm_framebuffer dst; struct drm_framebuffer src; int crtc; struct drm_framebuffer* fb; } ;
struct TYPE_3__ {int * cpp; } ;


 int drm_framebuffer_get (int *) ;
 int memcpy (int *,struct drm_framebuffer*,int) ;
 struct vkms_plane_state* to_vkms_plane_state (TYPE_2__*) ;

__attribute__((used)) static void vkms_plane_atomic_update(struct drm_plane *plane,
         struct drm_plane_state *old_state)
{
 struct vkms_plane_state *vkms_plane_state;
 struct drm_framebuffer *fb = plane->state->fb;
 struct vkms_composer *composer;

 if (!plane->state->crtc || !fb)
  return;

 vkms_plane_state = to_vkms_plane_state(plane->state);

 composer = vkms_plane_state->composer;
 memcpy(&composer->src, &plane->state->src, sizeof(struct drm_rect));
 memcpy(&composer->dst, &plane->state->dst, sizeof(struct drm_rect));
 memcpy(&composer->fb, fb, sizeof(struct drm_framebuffer));
 drm_framebuffer_get(&composer->fb);
 composer->offset = fb->offsets[0];
 composer->pitch = fb->pitches[0];
 composer->cpp = fb->format->cpp[0];
}
