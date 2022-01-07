
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_crtc {scalar_t__ state; } ;
struct dpu_crtc_state {int base; } ;


 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_reset (struct drm_crtc*,int *) ;
 int dpu_crtc_destroy_state (struct drm_crtc*,scalar_t__) ;
 struct dpu_crtc_state* kzalloc (int,int ) ;

__attribute__((used)) static void dpu_crtc_reset(struct drm_crtc *crtc)
{
 struct dpu_crtc_state *cstate = kzalloc(sizeof(*cstate), GFP_KERNEL);

 if (crtc->state)
  dpu_crtc_destroy_state(crtc, crtc->state);

 __drm_atomic_helper_crtc_reset(crtc, &cstate->base);
}
