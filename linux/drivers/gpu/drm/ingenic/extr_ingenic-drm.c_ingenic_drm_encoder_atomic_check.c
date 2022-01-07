
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_display_info {int num_bus_formats; int* bus_formats; } ;
struct drm_crtc_state {int dummy; } ;
struct drm_connector_state {TYPE_1__* connector; } ;
struct TYPE_2__ {scalar_t__ connector_type; struct drm_display_info display_info; } ;


 scalar_t__ DRM_MODE_CONNECTOR_TV ;
 int EINVAL ;





__attribute__((used)) static int ingenic_drm_encoder_atomic_check(struct drm_encoder *encoder,
         struct drm_crtc_state *crtc_state,
         struct drm_connector_state *conn_state)
{
 struct drm_display_info *info = &conn_state->connector->display_info;

 if (info->num_bus_formats != 1)
  return -EINVAL;

 if (conn_state->connector->connector_type == DRM_MODE_CONNECTOR_TV)
  return 0;

 switch (*info->bus_formats) {
 case 131:
 case 130:
 case 129:
 case 128:
  return 0;
 default:
  return -EINVAL;
 }
}
