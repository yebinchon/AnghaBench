
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {struct drm_plane* plane; int color_range; int color_encoding; int zpos; int alpha; int pixel_blend_mode; int rotation; } ;
struct komeda_plane_state {TYPE_3__ base; } ;
struct komeda_plane {TYPE_2__* layer; } ;
struct drm_plane {TYPE_3__* state; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ base; } ;


 int DRM_BLEND_ALPHA_OPAQUE ;
 int DRM_COLOR_YCBCR_BT601 ;
 int DRM_COLOR_YCBCR_LIMITED_RANGE ;
 int DRM_MODE_BLEND_PREMULTI ;
 int DRM_MODE_ROTATE_0 ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_destroy_state (TYPE_3__*) ;
 int kfree (TYPE_3__*) ;
 struct komeda_plane_state* kzalloc (int,int ) ;
 struct komeda_plane* to_kplane (struct drm_plane*) ;

__attribute__((used)) static void komeda_plane_reset(struct drm_plane *plane)
{
 struct komeda_plane_state *state;
 struct komeda_plane *kplane = to_kplane(plane);

 if (plane->state)
  __drm_atomic_helper_plane_destroy_state(plane->state);

 kfree(plane->state);
 plane->state = ((void*)0);

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (state) {
  state->base.rotation = DRM_MODE_ROTATE_0;
  state->base.pixel_blend_mode = DRM_MODE_BLEND_PREMULTI;
  state->base.alpha = DRM_BLEND_ALPHA_OPAQUE;
  state->base.zpos = kplane->layer->base.id;
  state->base.color_encoding = DRM_COLOR_YCBCR_BT601;
  state->base.color_range = DRM_COLOR_YCBCR_LIMITED_RANGE;
  plane->state = &state->base;
  plane->state->plane = plane;
 }
}
