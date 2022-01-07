
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane {scalar_t__ state; } ;
struct armada_plane_state {int base; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_plane_destroy_state (scalar_t__) ;
 int __drm_atomic_helper_plane_reset (struct drm_plane*,int *) ;
 int kfree (scalar_t__) ;
 struct armada_plane_state* kzalloc (int,int ) ;

void armada_plane_reset(struct drm_plane *plane)
{
 struct armada_plane_state *st;
 if (plane->state)
  __drm_atomic_helper_plane_destroy_state(plane->state);
 kfree(plane->state);
 st = kzalloc(sizeof(*st), GFP_KERNEL);
 if (st)
  __drm_atomic_helper_plane_reset(plane, &st->base);
}
