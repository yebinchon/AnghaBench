
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vmw_display_unit {int connector; } ;
struct TYPE_4__ {scalar_t__ crtc_clock; int clock; } ;
struct TYPE_3__ {int crtc_clock; } ;
struct drm_crtc_state {int plane_mask; int enable; int connector_mask; TYPE_2__ mode; TYPE_1__ adjusted_mode; int crtc; } ;
struct drm_crtc {int primary; } ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int drm_connector_mask (int *) ;
 int drm_plane_mask (int ) ;
 struct vmw_display_unit* vmw_crtc_to_du (int ) ;

int vmw_du_crtc_atomic_check(struct drm_crtc *crtc,
        struct drm_crtc_state *new_state)
{
 struct vmw_display_unit *du = vmw_crtc_to_du(new_state->crtc);
 int connector_mask = drm_connector_mask(&du->connector);
 bool has_primary = new_state->plane_mask &
      drm_plane_mask(crtc->primary);


 if (has_primary != new_state->enable)
  return -EINVAL;


 if (new_state->connector_mask != connector_mask &&
     new_state->connector_mask != 0) {
  DRM_ERROR("Invalid connectors configuration\n");
  return -EINVAL;
 }





 if (new_state->mode.crtc_clock == 0)
  new_state->adjusted_mode.crtc_clock = new_state->mode.clock;

 return 0;
}
