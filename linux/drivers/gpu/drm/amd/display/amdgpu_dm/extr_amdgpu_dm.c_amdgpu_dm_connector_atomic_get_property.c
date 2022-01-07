
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
struct drm_connector {struct drm_device* dev; } ;
struct dm_connector_state {int scaling; int abm_level; int underscan_enable; int underscan_vborder; int underscan_hborder; } ;
struct TYPE_4__ {struct drm_property* abm_level_property; struct drm_property* underscan_property; struct drm_property* underscan_vborder_property; struct drm_property* underscan_hborder_property; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;


 int DRM_MODE_SCALE_ASPECT ;
 int DRM_MODE_SCALE_CENTER ;
 int DRM_MODE_SCALE_FULLSCREEN ;
 int DRM_MODE_SCALE_NONE ;
 int EINVAL ;




 struct dm_connector_state* to_dm_connector_state (struct drm_connector_state const*) ;

int amdgpu_dm_connector_atomic_get_property(struct drm_connector *connector,
         const struct drm_connector_state *state,
         struct drm_property *property,
         uint64_t *val)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct dm_connector_state *dm_state =
  to_dm_connector_state(state);
 int ret = -EINVAL;

 if (property == dev->mode_config.scaling_mode_property) {
  switch (dm_state->scaling) {
  case 130:
   *val = DRM_MODE_SCALE_CENTER;
   break;
  case 131:
   *val = DRM_MODE_SCALE_ASPECT;
   break;
  case 129:
   *val = DRM_MODE_SCALE_FULLSCREEN;
   break;
  case 128:
  default:
   *val = DRM_MODE_SCALE_NONE;
   break;
  }
  ret = 0;
 } else if (property == adev->mode_info.underscan_hborder_property) {
  *val = dm_state->underscan_hborder;
  ret = 0;
 } else if (property == adev->mode_info.underscan_vborder_property) {
  *val = dm_state->underscan_vborder;
  ret = 0;
 } else if (property == adev->mode_info.underscan_property) {
  *val = dm_state->underscan_enable;
  ret = 0;
 } else if (property == adev->mode_info.abm_level_property) {
  *val = dm_state->abm_level;
  ret = 0;
 }

 return ret;
}
