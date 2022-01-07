
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nv50_head_atom {int state; } ;
struct drm_crtc {scalar_t__ state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_reset (struct drm_crtc*,int *) ;
 struct nv50_head_atom* kzalloc (int,int ) ;
 int nv50_head_atomic_destroy_state (struct drm_crtc*,scalar_t__) ;

__attribute__((used)) static void
nv50_head_reset(struct drm_crtc *crtc)
{
 struct nv50_head_atom *asyh;

 if (WARN_ON(!(asyh = kzalloc(sizeof(*asyh), GFP_KERNEL))))
  return;

 if (crtc->state)
  nv50_head_atomic_destroy_state(crtc, crtc->state);

 __drm_atomic_helper_crtc_reset(crtc, &asyh->state);
}
