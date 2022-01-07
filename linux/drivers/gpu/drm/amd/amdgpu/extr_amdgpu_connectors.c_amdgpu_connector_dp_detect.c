
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_encoder_helper_funcs {int (* detect ) (struct drm_encoder*,struct drm_connector*) ;} ;
struct drm_encoder {struct drm_encoder_helper_funcs* helper_private; } ;
struct drm_display_mode {int hdisplay; int vdisplay; } ;
struct drm_device {int dev; struct amdgpu_device* dev_private; } ;
struct drm_connector {int status; scalar_t__ connector_type; struct drm_device* dev; } ;
struct amdgpu_encoder {struct drm_display_mode native_mode; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_connector_atom_dig {scalar_t__ dp_sink_type; int edp_on; } ;
struct TYPE_2__ {int hpd; } ;
struct amdgpu_connector {TYPE_1__ hpd; scalar_t__ dac_load_detect; struct amdgpu_connector_atom_dig* con_priv; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 int ATOM_TRANSMITTER_ACTION_POWER_OFF ;
 int ATOM_TRANSMITTER_ACTION_POWER_ON ;
 scalar_t__ CONNECTOR_OBJECT_ID_DISPLAYPORT ;
 scalar_t__ DRM_MODE_CONNECTOR_LVDS ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 int amdgpu_atombios_dp_get_dpcd (struct amdgpu_connector*) ;
 scalar_t__ amdgpu_atombios_dp_get_sinktype (struct amdgpu_connector*) ;
 int amdgpu_atombios_encoder_set_edp_panel_power (struct drm_connector*,int ) ;
 int amdgpu_atombios_encoder_setup_ext_encoder_ddc (struct drm_encoder*) ;
 struct drm_encoder* amdgpu_connector_best_single_encoder (struct drm_connector*) ;
 scalar_t__ amdgpu_connector_check_hpd_status_unchanged (struct drm_connector*) ;
 scalar_t__ amdgpu_connector_encoder_get_dp_bridge_encoder_id (struct drm_connector*) ;
 int amdgpu_connector_free_edid (struct drm_connector*) ;
 int amdgpu_connector_update_scratch_regs (struct drm_connector*,int) ;
 scalar_t__ amdgpu_display_ddc_probe (struct amdgpu_connector*,int) ;
 scalar_t__ amdgpu_display_hpd_sense (struct amdgpu_device*,int ) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int drm_kms_helper_is_poll_worker () ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;
 int stub1 (struct drm_encoder*,struct drm_connector*) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static enum drm_connector_status
amdgpu_connector_dp_detect(struct drm_connector *connector, bool force)
{
 struct drm_device *dev = connector->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
 enum drm_connector_status ret = connector_status_disconnected;
 struct amdgpu_connector_atom_dig *amdgpu_dig_connector = amdgpu_connector->con_priv;
 struct drm_encoder *encoder = amdgpu_connector_best_single_encoder(connector);
 int r;

 if (!drm_kms_helper_is_poll_worker()) {
  r = pm_runtime_get_sync(connector->dev->dev);
  if (r < 0)
   return connector_status_disconnected;
 }

 if (!force && amdgpu_connector_check_hpd_status_unchanged(connector)) {
  ret = connector->status;
  goto out;
 }

 amdgpu_connector_free_edid(connector);

 if ((connector->connector_type == DRM_MODE_CONNECTOR_eDP) ||
     (connector->connector_type == DRM_MODE_CONNECTOR_LVDS)) {
  if (encoder) {
   struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
   struct drm_display_mode *native_mode = &amdgpu_encoder->native_mode;


   if (native_mode->hdisplay >= 320 && native_mode->vdisplay >= 240)
    ret = connector_status_connected;
  }

  amdgpu_dig_connector->dp_sink_type = CONNECTOR_OBJECT_ID_DISPLAYPORT;
  if (!amdgpu_dig_connector->edp_on)
   amdgpu_atombios_encoder_set_edp_panel_power(connector,
            ATOM_TRANSMITTER_ACTION_POWER_ON);
  if (!amdgpu_atombios_dp_get_dpcd(amdgpu_connector))
   ret = connector_status_connected;
  if (!amdgpu_dig_connector->edp_on)
   amdgpu_atombios_encoder_set_edp_panel_power(connector,
            ATOM_TRANSMITTER_ACTION_POWER_OFF);
 } else if (amdgpu_connector_encoder_get_dp_bridge_encoder_id(connector) !=
     ENCODER_OBJECT_ID_NONE) {

  amdgpu_dig_connector->dp_sink_type = CONNECTOR_OBJECT_ID_DISPLAYPORT;

  amdgpu_atombios_dp_get_dpcd(amdgpu_connector);

  if (encoder) {

   amdgpu_atombios_encoder_setup_ext_encoder_ddc(encoder);


   if (amdgpu_display_ddc_probe(amdgpu_connector, 1))
    ret = connector_status_connected;
   else if (amdgpu_connector->dac_load_detect) {
    const struct drm_encoder_helper_funcs *encoder_funcs = encoder->helper_private;
    ret = encoder_funcs->detect(encoder, connector);
   }
  }
 } else {
  amdgpu_dig_connector->dp_sink_type =
   amdgpu_atombios_dp_get_sinktype(amdgpu_connector);
  if (amdgpu_display_hpd_sense(adev, amdgpu_connector->hpd.hpd)) {
   ret = connector_status_connected;
   if (amdgpu_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT)
    amdgpu_atombios_dp_get_dpcd(amdgpu_connector);
  } else {
   if (amdgpu_dig_connector->dp_sink_type == CONNECTOR_OBJECT_ID_DISPLAYPORT) {
    if (!amdgpu_atombios_dp_get_dpcd(amdgpu_connector))
     ret = connector_status_connected;
   } else {

    if (amdgpu_display_ddc_probe(amdgpu_connector,
            0))
     ret = connector_status_connected;
   }
  }
 }

 amdgpu_connector_update_scratch_regs(connector, ret);
out:
 if (!drm_kms_helper_is_poll_worker()) {
  pm_runtime_mark_last_busy(connector->dev->dev);
  pm_runtime_put_autosuspend(connector->dev->dev);
 }

 return ret;
}
