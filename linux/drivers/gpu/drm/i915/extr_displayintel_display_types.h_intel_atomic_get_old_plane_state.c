
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane_state {int dummy; } ;
struct intel_plane {int base; } ;
struct intel_atomic_state {int base; } ;


 int drm_atomic_get_old_plane_state (int *,int *) ;
 struct intel_plane_state* to_intel_plane_state (int ) ;

__attribute__((used)) static inline struct intel_plane_state *
intel_atomic_get_old_plane_state(struct intel_atomic_state *state,
     struct intel_plane *plane)
{
 return to_intel_plane_state(drm_atomic_get_old_plane_state(&state->base,
           &plane->base));
}
