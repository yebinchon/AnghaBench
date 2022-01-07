
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct drm_crtc* crtc; } ;
struct vmw_crtc_state {TYPE_1__ base; } ;
struct drm_crtc {TYPE_1__* state; } ;


 int DRM_ERROR (char*) ;
 int GFP_KERNEL ;
 int __drm_atomic_helper_crtc_destroy_state (TYPE_1__*) ;
 int kfree (int ) ;
 struct vmw_crtc_state* kzalloc (int,int ) ;
 int vmw_crtc_state_to_vcs (TYPE_1__*) ;

void vmw_du_crtc_reset(struct drm_crtc *crtc)
{
 struct vmw_crtc_state *vcs;


 if (crtc->state) {
  __drm_atomic_helper_crtc_destroy_state(crtc->state);

  kfree(vmw_crtc_state_to_vcs(crtc->state));
 }

 vcs = kzalloc(sizeof(*vcs), GFP_KERNEL);

 if (!vcs) {
  DRM_ERROR("Cannot allocate vmw_crtc_state\n");
  return;
 }

 crtc->state = &vcs->base;
 crtc->state->crtc = crtc;
}
