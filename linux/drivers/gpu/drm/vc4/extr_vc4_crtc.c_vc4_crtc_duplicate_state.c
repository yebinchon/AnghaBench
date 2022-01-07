
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct vc4_crtc_state {struct drm_crtc_state base; int margins; int feed_txp; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct vc4_crtc_state* kzalloc (int,int ) ;
 struct vc4_crtc_state* to_vc4_crtc_state (int ) ;

__attribute__((used)) static struct drm_crtc_state *vc4_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct vc4_crtc_state *vc4_state, *old_vc4_state;

 vc4_state = kzalloc(sizeof(*vc4_state), GFP_KERNEL);
 if (!vc4_state)
  return ((void*)0);

 old_vc4_state = to_vc4_crtc_state(crtc->state);
 vc4_state->feed_txp = old_vc4_state->feed_txp;
 vc4_state->margins = old_vc4_state->margins;

 __drm_atomic_helper_crtc_duplicate_state(crtc, &vc4_state->base);
 return &vc4_state->base;
}
