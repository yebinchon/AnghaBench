
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int pixel_blend_mode; int alpha; int rotation; struct drm_plane* plane; } ;
struct drm_plane {struct drm_plane_state* state; } ;


 int DRM_BLEND_ALPHA_OPAQUE ;
 int DRM_MODE_BLEND_PREMULTI ;
 int DRM_MODE_ROTATE_0 ;

void __drm_atomic_helper_plane_reset(struct drm_plane *plane,
         struct drm_plane_state *state)
{
 state->plane = plane;
 state->rotation = DRM_MODE_ROTATE_0;

 state->alpha = DRM_BLEND_ALPHA_OPAQUE;
 state->pixel_blend_mode = DRM_MODE_BLEND_PREMULTI;

 plane->state = state;
}
