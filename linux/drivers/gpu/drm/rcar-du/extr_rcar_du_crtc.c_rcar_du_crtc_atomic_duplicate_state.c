
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct rcar_du_crtc_state {struct drm_crtc_state state; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 scalar_t__ WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct rcar_du_crtc_state* kmemdup (struct rcar_du_crtc_state*,int,int ) ;
 struct rcar_du_crtc_state* to_rcar_crtc_state (int ) ;

__attribute__((used)) static struct drm_crtc_state *
rcar_du_crtc_atomic_duplicate_state(struct drm_crtc *crtc)
{
 struct rcar_du_crtc_state *state;
 struct rcar_du_crtc_state *copy;

 if (WARN_ON(!crtc->state))
  return ((void*)0);

 state = to_rcar_crtc_state(crtc->state);
 copy = kmemdup(state, sizeof(*state), GFP_KERNEL);
 if (copy == ((void*)0))
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &copy->state);

 return &copy->state;
}
