
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {struct drm_crtc* crtc; } ;
struct imx_crtc_state {struct drm_crtc_state base; } ;
struct drm_crtc {int dummy; } ;


 int GFP_KERNEL ;
 int WARN_ON (int) ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct imx_crtc_state* kzalloc (int,int ) ;

__attribute__((used)) static struct drm_crtc_state *imx_drm_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct imx_crtc_state *state;

 state = kzalloc(sizeof(*state), GFP_KERNEL);
 if (!state)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &state->base);

 WARN_ON(state->base.crtc != crtc);
 state->base.crtc = crtc;

 return &state->base;
}
