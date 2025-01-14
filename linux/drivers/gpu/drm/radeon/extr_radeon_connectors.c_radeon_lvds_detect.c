
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct radeon_encoder {struct drm_display_mode native_mode; } ;
struct radeon_device {int flags; } ;
struct radeon_connector {scalar_t__ edid; } ;
struct drm_encoder {int dummy; } ;
struct drm_device {int dev; struct radeon_device* dev_private; } ;
struct drm_connector {struct drm_device* dev; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int RADEON_IS_PX ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int drm_kms_helper_is_poll_worker () ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct drm_encoder* radeon_best_single_encoder (struct drm_connector*) ;
 int radeon_connector_get_edid (struct drm_connector*) ;
 int radeon_connector_update_scratch_regs (struct drm_connector*,int) ;
 scalar_t__ radeon_runtime_pm ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static enum drm_connector_status
radeon_lvds_detect(struct drm_connector *connector, bool force)
{
 struct drm_device *dev = connector->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_connector *radeon_connector = to_radeon_connector(connector);
 struct drm_encoder *encoder = radeon_best_single_encoder(connector);
 enum drm_connector_status ret = connector_status_disconnected;
 int r;

 if (!drm_kms_helper_is_poll_worker()) {
  r = pm_runtime_get_sync(connector->dev->dev);
  if (r < 0)
   return connector_status_disconnected;
 }

 if (encoder) {
  struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
  struct drm_display_mode *native_mode = &radeon_encoder->native_mode;


  if (native_mode->hdisplay >= 320 && native_mode->vdisplay >= 240)
   ret = connector_status_connected;



  if ((rdev->flags & RADEON_IS_PX) && (radeon_runtime_pm != 0))
   ret = connector_status_disconnected;
 }


 radeon_connector_get_edid(connector);
 if (radeon_connector->edid)
  ret = connector_status_connected;


 radeon_connector_update_scratch_regs(connector, ret);

 if (!drm_kms_helper_is_poll_worker()) {
  pm_runtime_mark_last_busy(connector->dev->dev);
  pm_runtime_put_autosuspend(connector->dev->dev);
 }

 return ret;
}
