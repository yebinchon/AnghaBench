
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int __drm_atomic_helper_plane_destroy_state (struct drm_plane_state*) ;
 int kfree (int ) ;
 int to_rcar_plane_state (struct drm_plane_state*) ;

__attribute__((used)) static void rcar_du_plane_atomic_destroy_state(struct drm_plane *plane,
            struct drm_plane_state *state)
{
 __drm_atomic_helper_plane_destroy_state(state);
 kfree(to_rcar_plane_state(state));
}
