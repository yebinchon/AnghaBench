
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_property {int dummy; } ;
struct TYPE_2__ {struct drm_property* scaling_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; } ;
struct drm_connector_helper_funcs {scalar_t__ (* best_encoder ) (struct drm_connector*) ;} ;
struct drm_connector {struct drm_connector_helper_funcs* helper_private; scalar_t__ encoder; struct drm_device* dev; } ;
struct amdgpu_encoder {int rmx_type; int base; } ;
typedef enum amdgpu_rmx_type { ____Placeholder_amdgpu_rmx_type } amdgpu_rmx_type ;


 int DRM_DEBUG_KMS (char*) ;




 int RMX_ASPECT ;
 int RMX_CENTER ;
 int RMX_FULL ;
 int RMX_OFF ;
 int amdgpu_connector_property_change_mode (int *) ;
 scalar_t__ stub1 (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (scalar_t__) ;

__attribute__((used)) static int amdgpu_connector_set_lcd_property(struct drm_connector *connector,
           struct drm_property *property,
           uint64_t value)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_encoder *amdgpu_encoder;
 enum amdgpu_rmx_type rmx_type;

 DRM_DEBUG_KMS("\n");
 if (property != dev->mode_config.scaling_mode_property)
  return 0;

 if (connector->encoder)
  amdgpu_encoder = to_amdgpu_encoder(connector->encoder);
 else {
  const struct drm_connector_helper_funcs *connector_funcs = connector->helper_private;
  amdgpu_encoder = to_amdgpu_encoder(connector_funcs->best_encoder(connector));
 }

 switch (value) {
 case 128: rmx_type = RMX_OFF; break;
 case 130: rmx_type = RMX_CENTER; break;
 case 131: rmx_type = RMX_ASPECT; break;
 default:
 case 129: rmx_type = RMX_FULL; break;
 }
 if (amdgpu_encoder->rmx_type == rmx_type)
  return 0;

 amdgpu_encoder->rmx_type = rmx_type;

 amdgpu_connector_property_change_mode(&amdgpu_encoder->base);
 return 0;
}
