
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_crtc_state {int dummy; } ;
struct TYPE_2__ {int need_postvbl_update; } ;
struct intel_crtc_state {int update_pipe; int disable_lp_wm; int disable_cxsr; int update_wm_pre; int update_wm_post; int fb_changed; int fifo_changed; struct drm_crtc_state base; scalar_t__ update_planes; scalar_t__ fb_bits; TYPE_1__ wm; } ;
struct drm_crtc {int state; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct intel_crtc_state* kmemdup (int ,int,int ) ;

struct drm_crtc_state *
intel_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct intel_crtc_state *crtc_state;

 crtc_state = kmemdup(crtc->state, sizeof(*crtc_state), GFP_KERNEL);
 if (!crtc_state)
  return ((void*)0);

 __drm_atomic_helper_crtc_duplicate_state(crtc, &crtc_state->base);

 crtc_state->update_pipe = 0;
 crtc_state->disable_lp_wm = 0;
 crtc_state->disable_cxsr = 0;
 crtc_state->update_wm_pre = 0;
 crtc_state->update_wm_post = 0;
 crtc_state->fb_changed = 0;
 crtc_state->fifo_changed = 0;
 crtc_state->wm.need_postvbl_update = 0;
 crtc_state->fb_bits = 0;
 crtc_state->update_planes = 0;

 return &crtc_state->base;
}
