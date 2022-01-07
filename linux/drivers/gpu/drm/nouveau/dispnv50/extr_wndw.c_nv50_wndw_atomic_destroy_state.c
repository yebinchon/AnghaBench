
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_wndw_atom {int state; } ;
struct drm_plane_state {int dummy; } ;
struct drm_plane {int dummy; } ;


 int __drm_atomic_helper_plane_destroy_state (int *) ;
 int kfree (struct nv50_wndw_atom*) ;
 struct nv50_wndw_atom* nv50_wndw_atom (struct drm_plane_state*) ;

__attribute__((used)) static void
nv50_wndw_atomic_destroy_state(struct drm_plane *plane,
          struct drm_plane_state *state)
{
 struct nv50_wndw_atom *asyw = nv50_wndw_atom(state);
 __drm_atomic_helper_plane_destroy_state(&asyw->state);
 kfree(asyw);
}
