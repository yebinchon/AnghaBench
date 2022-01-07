
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int zpos; unsigned int normalized_zpos; } ;
struct ipu_plane_state {TYPE_1__ base; } ;
struct drm_plane {scalar_t__ type; int * state; } ;


 scalar_t__ DRM_PLANE_TYPE_PRIMARY ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_destroy_state (int *) ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,TYPE_1__*) ;
 int kfree (struct ipu_plane_state*) ;
 struct ipu_plane_state* kzalloc (int,int ) ;
 struct ipu_plane_state* to_ipu_plane_state (int *) ;

__attribute__((used)) static void ipu_plane_state_reset(struct drm_plane *plane)
{
 unsigned int zpos = (plane->type == DRM_PLANE_TYPE_PRIMARY) ? 0 : 1;
 struct ipu_plane_state *ipu_state;

 if (plane->state) {
  ipu_state = to_ipu_plane_state(plane->state);
  __drm_atomic_helper_plane_destroy_state(plane->state);
  kfree(ipu_state);
  plane->state = ((void*)0);
 }

 ipu_state = kzalloc(sizeof(*ipu_state), GFP_KERNEL);

 if (ipu_state) {
  __drm_atomic_helper_plane_reset(plane, &ipu_state->base);
  ipu_state->base.zpos = zpos;
  ipu_state->base.normalized_zpos = zpos;
 }
}
