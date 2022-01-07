
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct drm_property {int dummy; } ;
struct TYPE_3__ {struct drm_property* scaling_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; struct amdgpu_device* dev_private; } ;
struct drm_connector_state {int dummy; } ;
struct drm_connector {struct drm_connector_state* state; struct drm_device* dev; } ;
struct dm_connector_state {int scaling; int underscan_hborder; int underscan_vborder; int underscan_enable; int abm_level; } ;
struct TYPE_4__ {struct drm_property* abm_level_property; struct drm_property* underscan_property; struct drm_property* underscan_vborder_property; struct drm_property* underscan_hborder_property; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
typedef enum amdgpu_rmx_type { ____Placeholder_amdgpu_rmx_type } amdgpu_rmx_type ;






 int EINVAL ;
 int RMX_ASPECT ;
 int RMX_CENTER ;
 int RMX_FULL ;
 int RMX_OFF ;
 struct dm_connector_state* to_dm_connector_state (struct drm_connector_state*) ;

int amdgpu_dm_connector_atomic_set_property(struct drm_connector *connector,
         struct drm_connector_state *connector_state,
         struct drm_property *property,
         uint64_t val)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct dm_connector_state *dm_old_state =
  to_dm_connector_state(connector->state);
 struct dm_connector_state *dm_new_state =
  to_dm_connector_state(connector_state);

 int ret = -EINVAL;

 if (property == dev->mode_config.scaling_mode_property) {
  enum amdgpu_rmx_type rmx_type;

  switch (val) {
  case 130:
   rmx_type = RMX_CENTER;
   break;
  case 131:
   rmx_type = RMX_ASPECT;
   break;
  case 129:
   rmx_type = RMX_FULL;
   break;
  case 128:
  default:
   rmx_type = RMX_OFF;
   break;
  }

  if (dm_old_state->scaling == rmx_type)
   return 0;

  dm_new_state->scaling = rmx_type;
  ret = 0;
 } else if (property == adev->mode_info.underscan_hborder_property) {
  dm_new_state->underscan_hborder = val;
  ret = 0;
 } else if (property == adev->mode_info.underscan_vborder_property) {
  dm_new_state->underscan_vborder = val;
  ret = 0;
 } else if (property == adev->mode_info.underscan_property) {
  dm_new_state->underscan_enable = val;
  ret = 0;
 } else if (property == adev->mode_info.abm_level_property) {
  dm_new_state->abm_level = val;
  ret = 0;
 }

 return ret;
}
