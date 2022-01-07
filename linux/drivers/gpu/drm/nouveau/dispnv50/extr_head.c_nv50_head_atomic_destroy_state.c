
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_head_atom {int state; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int __drm_atomic_helper_crtc_destroy_state (int *) ;
 int kfree (struct nv50_head_atom*) ;
 struct nv50_head_atom* nv50_head_atom (struct drm_crtc_state*) ;

__attribute__((used)) static void
nv50_head_atomic_destroy_state(struct drm_crtc *crtc,
          struct drm_crtc_state *state)
{
 struct nv50_head_atom *asyh = nv50_head_atom(state);
 __drm_atomic_helper_crtc_destroy_state(&asyh->state);
 kfree(asyh);
}
