
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vmw_plane_state {scalar_t__ bo_size; scalar_t__ bo; } ;
struct drm_plane_state {struct drm_crtc* crtc; } ;
struct drm_plane {TYPE_1__* state; } ;
struct drm_crtc {int dev; } ;
struct TYPE_2__ {struct drm_crtc* crtc; } ;


 int vmw_bo_unpin (int ,scalar_t__,int) ;
 int vmw_bo_unreference (scalar_t__*) ;
 int vmw_du_plane_cleanup_fb (struct drm_plane*,struct drm_plane_state*) ;
 struct vmw_plane_state* vmw_plane_state_to_vps (struct drm_plane_state*) ;
 int vmw_priv (int ) ;

__attribute__((used)) static void
vmw_sou_primary_plane_cleanup_fb(struct drm_plane *plane,
     struct drm_plane_state *old_state)
{
 struct vmw_plane_state *vps = vmw_plane_state_to_vps(old_state);
 struct drm_crtc *crtc = plane->state->crtc ?
  plane->state->crtc : old_state->crtc;

 if (vps->bo)
  vmw_bo_unpin(vmw_priv(crtc->dev), vps->bo, 0);
 vmw_bo_unreference(&vps->bo);
 vps->bo_size = 0;

 vmw_du_plane_cleanup_fb(plane, old_state);
}
