
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder {int dummy; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_connector {TYPE_1__* dev; } ;
struct amdgpu_encoder {struct drm_display_mode native_mode; } ;
struct amdgpu_connector {scalar_t__ edid; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;
struct TYPE_2__ {int dev; } ;


 struct drm_encoder* amdgpu_connector_best_single_encoder (struct drm_connector*) ;
 int amdgpu_connector_get_edid (struct drm_connector*) ;
 int amdgpu_connector_update_scratch_regs (struct drm_connector*,int) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int drm_kms_helper_is_poll_worker () ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static enum drm_connector_status
amdgpu_connector_lvds_detect(struct drm_connector *connector, bool force)
{
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 struct drm_encoder *encoder = amdgpu_connector_best_single_encoder(connector);
 enum drm_connector_status ret = connector_status_disconnected;
 int r;

 if (!drm_kms_helper_is_poll_worker()) {
  r = pm_runtime_get_sync(connector->dev->dev);
  if (r < 0)
   return connector_status_disconnected;
 }

 if (encoder) {
  struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
  struct drm_display_mode *native_mode = &amdgpu_encoder->native_mode;


  if (native_mode->hdisplay >= 320 && native_mode->vdisplay >= 240)
   ret = connector_status_connected;

 }


 amdgpu_connector_get_edid(connector);
 if (amdgpu_connector->edid)
  ret = connector_status_connected;


 amdgpu_connector_update_scratch_regs(connector, ret);

 if (!drm_kms_helper_is_poll_worker()) {
  pm_runtime_mark_last_busy(connector->dev->dev);
  pm_runtime_put_autosuspend(connector->dev->dev);
 }

 return ret;
}
