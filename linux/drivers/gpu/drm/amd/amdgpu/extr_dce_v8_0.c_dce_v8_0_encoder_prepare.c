
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_encoder {TYPE_1__* dev; } ;
struct drm_connector {scalar_t__ connector_type; } ;
struct amdgpu_encoder_atom_dig {size_t dig_encoder; int afmt; } ;
struct amdgpu_encoder {int active_device; struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct TYPE_5__ {int * afmt; } ;
struct amdgpu_device {TYPE_2__ mode_info; } ;
struct TYPE_6__ {scalar_t__ cd_valid; } ;
struct amdgpu_connector {TYPE_3__ router; } ;
struct TYPE_4__ {struct amdgpu_device* dev_private; } ;


 int ATOM_DEVICE_DFP_SUPPORT ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 int ATOM_TRANSMITTER_ACTION_POWER_ON ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 int amdgpu_atombios_encoder_set_crtc_source (struct drm_encoder*) ;
 int amdgpu_atombios_encoder_set_edp_panel_power (struct drm_connector*,int ) ;
 int amdgpu_atombios_scratch_regs_lock (struct amdgpu_device*,int) ;
 scalar_t__ amdgpu_encoder_get_dp_bridge_encoder_id (struct drm_encoder*) ;
 struct drm_connector* amdgpu_get_connector_for_encoder (struct drm_encoder*) ;
 int amdgpu_i2c_router_select_cd_port (struct amdgpu_connector*) ;
 size_t dce_v8_0_pick_dig_encoder (struct drm_encoder*) ;
 int dce_v8_0_program_fmt (struct drm_encoder*) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void dce_v8_0_encoder_prepare(struct drm_encoder *encoder)
{
 struct amdgpu_device *adev = encoder->dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct drm_connector *connector = amdgpu_get_connector_for_encoder(encoder);

 if ((amdgpu_encoder->active_device &
      (ATOM_DEVICE_DFP_SUPPORT | ATOM_DEVICE_LCD_SUPPORT)) ||
     (amdgpu_encoder_get_dp_bridge_encoder_id(encoder) !=
      ENCODER_OBJECT_ID_NONE)) {
  struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
  if (dig) {
   dig->dig_encoder = dce_v8_0_pick_dig_encoder(encoder);
   if (amdgpu_encoder->active_device & ATOM_DEVICE_DFP_SUPPORT)
    dig->afmt = adev->mode_info.afmt[dig->dig_encoder];
  }
 }

 amdgpu_atombios_scratch_regs_lock(adev, 1);

 if (connector) {
  struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);


  if (amdgpu_connector->router.cd_valid)
   amdgpu_i2c_router_select_cd_port(amdgpu_connector);


  if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
   amdgpu_atombios_encoder_set_edp_panel_power(connector,
            ATOM_TRANSMITTER_ACTION_POWER_ON);
 }


 amdgpu_atombios_encoder_set_crtc_source(encoder);

 dce_v8_0_program_fmt(encoder);
}
