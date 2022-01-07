
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;
struct TYPE_2__ {int vma; } ;


 int WARN_ON (int ) ;
 int drm_atomic_helper_plane_destroy_state (struct drm_plane*,struct drm_plane_state*) ;
 TYPE_1__* to_intel_plane_state (struct drm_plane_state*) ;

void
intel_plane_destroy_state(struct drm_plane *plane,
     struct drm_plane_state *state)
{
 WARN_ON(to_intel_plane_state(state)->vma);

 drm_atomic_helper_plane_destroy_state(plane, state);
}
