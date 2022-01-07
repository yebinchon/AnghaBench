
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rcar_du_plane_state {int format; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int __rcar_du_plane_atomic_check (struct drm_plane*,struct drm_plane_state*,int *) ;
 struct rcar_du_plane_state* to_rcar_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static int rcar_du_plane_atomic_check(struct drm_plane *plane,
          struct drm_plane_state *state)
{
 struct rcar_du_plane_state *rstate = to_rcar_plane_state(state);

 return __rcar_du_plane_atomic_check(plane, state, &rstate->format);
}
