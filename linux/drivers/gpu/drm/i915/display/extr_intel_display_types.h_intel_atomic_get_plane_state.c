
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_plane_state {int dummy; } ;
struct intel_plane {int base; } ;
struct intel_atomic_state {int base; } ;
struct drm_plane_state {int dummy; } ;


 struct intel_plane_state* ERR_CAST (struct drm_plane_state*) ;
 scalar_t__ IS_ERR (struct drm_plane_state*) ;
 struct drm_plane_state* drm_atomic_get_plane_state (int *,int *) ;
 struct intel_plane_state* to_intel_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static inline struct intel_plane_state *
intel_atomic_get_plane_state(struct intel_atomic_state *state,
     struct intel_plane *plane)
{
 struct drm_plane_state *ret =
  drm_atomic_get_plane_state(&state->base, &plane->base);

 if (IS_ERR(ret))
  return ERR_CAST(ret);

 return to_intel_plane_state(ret);
}
