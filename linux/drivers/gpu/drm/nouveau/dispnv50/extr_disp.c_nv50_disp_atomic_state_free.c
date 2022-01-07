
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_atom {int state; } ;
struct drm_atomic_state {int dummy; } ;


 int drm_atomic_state_default_release (int *) ;
 int kfree (struct nv50_atom*) ;
 struct nv50_atom* nv50_atom (struct drm_atomic_state*) ;

__attribute__((used)) static void
nv50_disp_atomic_state_free(struct drm_atomic_state *state)
{
 struct nv50_atom *atom = nv50_atom(state);
 drm_atomic_state_default_release(&atom->state);
 kfree(atom);
}
