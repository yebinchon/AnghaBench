
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct radeon_encoder_atom_dig {size_t dig_encoder; int afmt; } ;
struct radeon_encoder {int active_device; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_5__ {int * afmt; } ;
struct radeon_device {scalar_t__ family; TYPE_2__ mode_info; } ;
struct TYPE_6__ {scalar_t__ cd_valid; } ;
struct radeon_connector {TYPE_3__ router; } ;
struct drm_encoder {TYPE_1__* dev; } ;
struct drm_connector {scalar_t__ connector_type; } ;
struct TYPE_4__ {struct radeon_device* dev_private; } ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE3 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE4 (struct radeon_device*) ;
 scalar_t__ ASIC_IS_DCE8 (struct radeon_device*) ;
 int ATOM_DEVICE_DFP_SUPPORT ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 int ATOM_TRANSMITTER_ACTION_POWER_ON ;
 scalar_t__ CHIP_R600 ;
 scalar_t__ DRM_MODE_CONNECTOR_eDP ;
 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 int atombios_set_edp_panel_power (struct drm_connector*,int ) ;
 int atombios_set_encoder_crtc_source (struct drm_encoder*) ;
 int avivo_program_fmt (struct drm_encoder*) ;
 int dce3_program_fmt (struct drm_encoder*) ;
 int dce4_program_fmt (struct drm_encoder*) ;
 int dce8_program_fmt (struct drm_encoder*) ;
 int radeon_atom_output_lock (struct drm_encoder*,int) ;
 size_t radeon_atom_pick_dig_encoder (struct drm_encoder*,int) ;
 int radeon_atom_release_dig_encoder (struct radeon_device*,size_t) ;
 scalar_t__ radeon_encoder_get_dp_bridge_encoder_id (struct drm_encoder*) ;
 struct drm_connector* radeon_get_connector_for_encoder (struct drm_encoder*) ;
 int radeon_router_select_cd_port (struct radeon_connector*) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static void radeon_atom_encoder_prepare(struct drm_encoder *encoder)
{
 struct radeon_device *rdev = encoder->dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct drm_connector *connector = radeon_get_connector_for_encoder(encoder);

 if ((radeon_encoder->active_device &
      (ATOM_DEVICE_DFP_SUPPORT | ATOM_DEVICE_LCD_SUPPORT)) ||
     (radeon_encoder_get_dp_bridge_encoder_id(encoder) !=
      ENCODER_OBJECT_ID_NONE)) {
  struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
  if (dig) {
   if (dig->dig_encoder >= 0)
    radeon_atom_release_dig_encoder(rdev, dig->dig_encoder);
   dig->dig_encoder = radeon_atom_pick_dig_encoder(encoder, -1);
   if (radeon_encoder->active_device & ATOM_DEVICE_DFP_SUPPORT) {
    if (rdev->family >= CHIP_R600)
     dig->afmt = rdev->mode_info.afmt[dig->dig_encoder];
    else

     dig->afmt = rdev->mode_info.afmt[0];
   }
  }
 }

 radeon_atom_output_lock(encoder, 1);

 if (connector) {
  struct radeon_connector *radeon_connector = to_radeon_connector(connector);


  if (radeon_connector->router.cd_valid)
   radeon_router_select_cd_port(radeon_connector);


  if (connector->connector_type == DRM_MODE_CONNECTOR_eDP)
   atombios_set_edp_panel_power(connector,
           ATOM_TRANSMITTER_ACTION_POWER_ON);
 }


 atombios_set_encoder_crtc_source(encoder);

 if (ASIC_IS_DCE8(rdev))
  dce8_program_fmt(encoder);
 else if (ASIC_IS_DCE4(rdev))
  dce4_program_fmt(encoder);
 else if (ASIC_IS_DCE3(rdev))
  dce3_program_fmt(encoder);
 else if (ASIC_IS_AVIVO(rdev))
  avivo_program_fmt(encoder);
}
