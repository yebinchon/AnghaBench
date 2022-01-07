
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc_state {int dummy; } ;
struct drm_crtc {int state; } ;
struct dpu_crtc_state {struct drm_crtc_state base; } ;
struct dpu_crtc {int dummy; } ;


 int DPU_ERROR (char*) ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_duplicate_state (struct drm_crtc*,struct drm_crtc_state*) ;
 struct dpu_crtc_state* kmemdup (struct dpu_crtc_state*,int,int ) ;
 struct dpu_crtc* to_dpu_crtc (struct drm_crtc*) ;
 struct dpu_crtc_state* to_dpu_crtc_state (int ) ;

__attribute__((used)) static struct drm_crtc_state *dpu_crtc_duplicate_state(struct drm_crtc *crtc)
{
 struct dpu_crtc *dpu_crtc;
 struct dpu_crtc_state *cstate, *old_cstate;

 if (!crtc || !crtc->state) {
  DPU_ERROR("invalid argument(s)\n");
  return ((void*)0);
 }

 dpu_crtc = to_dpu_crtc(crtc);
 old_cstate = to_dpu_crtc_state(crtc->state);
 cstate = kmemdup(old_cstate, sizeof(*old_cstate), GFP_KERNEL);
 if (!cstate) {
  DPU_ERROR("failed to allocate state\n");
  return ((void*)0);
 }


 __drm_atomic_helper_crtc_duplicate_state(crtc, &cstate->base);

 return &cstate->base;
}
