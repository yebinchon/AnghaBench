
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct radeon_encoder_tv_dac {int coherent_mode; int tv_std; } ;
struct radeon_encoder_int_tmds {int coherent_mode; int tv_std; } ;
struct radeon_encoder_atom_dig {int coherent_mode; int tv_std; } ;
struct radeon_encoder_atom_dac {int coherent_mode; int tv_std; } ;
struct TYPE_6__ {scalar_t__ clock; } ;
struct radeon_encoder {int underscan_type; int underscan_hborder; int underscan_vborder; int rmx_type; int output_csc; int base; TYPE_2__ native_mode; struct radeon_encoder_tv_dac* enc_priv; } ;
struct TYPE_8__ {struct drm_property* output_csc_property; struct drm_property* tmds_pll_property; struct drm_property* load_detect_property; struct drm_property* tv_std_property; struct drm_property* underscan_vborder_property; struct drm_property* underscan_hborder_property; struct drm_property* underscan_property; struct drm_property* dither_property; struct drm_property* audio_property; struct drm_property* coherent_mode_property; } ;
struct radeon_device {TYPE_4__ mode_info; scalar_t__ is_atom_bios; } ;
struct radeon_crtc {int output_csc; } ;
struct radeon_connector {int audio; int dither; int dac_load_detect; } ;
struct drm_property {int dummy; } ;
struct drm_encoder {struct drm_crtc* crtc; } ;
struct TYPE_5__ {struct drm_property* scaling_mode_property; } ;
struct drm_device {TYPE_1__ mode_config; struct radeon_device* dev_private; } ;
struct drm_crtc {TYPE_3__* funcs; } ;
struct drm_connector_helper_funcs {struct drm_encoder* (* best_encoder ) (struct drm_connector*) ;} ;
struct drm_connector {struct drm_encoder* encoder; struct drm_connector_helper_funcs* helper_private; struct drm_device* dev; } ;
typedef enum radeon_rmx_type { ____Placeholder_radeon_rmx_type } radeon_rmx_type ;
struct TYPE_7__ {int (* gamma_set ) (struct drm_crtc*,int *,int *,int *,int ,int *) ;} ;


 scalar_t__ ASIC_IS_AVIVO (struct radeon_device*) ;
 int DRM_MODE_ENCODER_DAC ;
 int DRM_MODE_ENCODER_TMDS ;
 int DRM_MODE_ENCODER_TVDAC ;




 int RMX_ASPECT ;
 int RMX_CENTER ;
 int RMX_FULL ;
 int RMX_OFF ;
 int radeon_atombios_get_tmds_info (struct radeon_encoder*,struct radeon_encoder_tv_dac*) ;
 struct drm_encoder* radeon_find_encoder (struct drm_connector*,int ) ;
 int radeon_legacy_get_tmds_info_from_combios (struct radeon_encoder*,struct radeon_encoder_tv_dac*) ;
 int radeon_legacy_get_tmds_info_from_table (struct radeon_encoder*,struct radeon_encoder_tv_dac*) ;
 int radeon_property_change_mode (int *) ;
 scalar_t__ radeon_r4xx_atom ;
 struct drm_encoder* stub1 (struct drm_connector*) ;
 struct drm_encoder* stub2 (struct drm_connector*) ;
 int stub3 (struct drm_crtc*,int *,int *,int *,int ,int *) ;
 struct radeon_connector* to_radeon_connector (struct drm_connector*) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

__attribute__((used)) static int radeon_connector_set_property(struct drm_connector *connector, struct drm_property *property,
      uint64_t val)
{
 struct drm_device *dev = connector->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct drm_encoder *encoder;
 struct radeon_encoder *radeon_encoder;

 if (property == rdev->mode_info.coherent_mode_property) {
  struct radeon_encoder_atom_dig *dig;
  bool new_coherent_mode;


  encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  radeon_encoder = to_radeon_encoder(encoder);

  if (!radeon_encoder->enc_priv)
   return 0;

  dig = radeon_encoder->enc_priv;
  new_coherent_mode = val ? 1 : 0;
  if (dig->coherent_mode != new_coherent_mode) {
   dig->coherent_mode = new_coherent_mode;
   radeon_property_change_mode(&radeon_encoder->base);
  }
 }

 if (property == rdev->mode_info.audio_property) {
  struct radeon_connector *radeon_connector = to_radeon_connector(connector);

  encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  radeon_encoder = to_radeon_encoder(encoder);

  if (radeon_connector->audio != val) {
   radeon_connector->audio = val;
   radeon_property_change_mode(&radeon_encoder->base);
  }
 }

 if (property == rdev->mode_info.dither_property) {
  struct radeon_connector *radeon_connector = to_radeon_connector(connector);

  encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  radeon_encoder = to_radeon_encoder(encoder);

  if (radeon_connector->dither != val) {
   radeon_connector->dither = val;
   radeon_property_change_mode(&radeon_encoder->base);
  }
 }

 if (property == rdev->mode_info.underscan_property) {

  encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  radeon_encoder = to_radeon_encoder(encoder);

  if (radeon_encoder->underscan_type != val) {
   radeon_encoder->underscan_type = val;
   radeon_property_change_mode(&radeon_encoder->base);
  }
 }

 if (property == rdev->mode_info.underscan_hborder_property) {

  encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  radeon_encoder = to_radeon_encoder(encoder);

  if (radeon_encoder->underscan_hborder != val) {
   radeon_encoder->underscan_hborder = val;
   radeon_property_change_mode(&radeon_encoder->base);
  }
 }

 if (property == rdev->mode_info.underscan_vborder_property) {

  encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  radeon_encoder = to_radeon_encoder(encoder);

  if (radeon_encoder->underscan_vborder != val) {
   radeon_encoder->underscan_vborder = val;
   radeon_property_change_mode(&radeon_encoder->base);
  }
 }

 if (property == rdev->mode_info.tv_std_property) {
  encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_TVDAC);
  if (!encoder) {
   encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_DAC);
  }

  if (!encoder)
   return 0;

  radeon_encoder = to_radeon_encoder(encoder);
  if (!radeon_encoder->enc_priv)
   return 0;
  if (ASIC_IS_AVIVO(rdev) || radeon_r4xx_atom) {
   struct radeon_encoder_atom_dac *dac_int;
   dac_int = radeon_encoder->enc_priv;
   dac_int->tv_std = val;
  } else {
   struct radeon_encoder_tv_dac *dac_int;
   dac_int = radeon_encoder->enc_priv;
   dac_int->tv_std = val;
  }
  radeon_property_change_mode(&radeon_encoder->base);
 }

 if (property == rdev->mode_info.load_detect_property) {
  struct radeon_connector *radeon_connector =
   to_radeon_connector(connector);

  if (val == 0)
   radeon_connector->dac_load_detect = 0;
  else
   radeon_connector->dac_load_detect = 1;
 }

 if (property == rdev->mode_info.tmds_pll_property) {
  struct radeon_encoder_int_tmds *tmds = ((void*)0);
  bool ret = 0;

  encoder = radeon_find_encoder(connector, DRM_MODE_ENCODER_TMDS);
  if (!encoder)
   return 0;

  radeon_encoder = to_radeon_encoder(encoder);

  tmds = radeon_encoder->enc_priv;
  if (!tmds)
   return 0;

  if (val == 0) {
   if (rdev->is_atom_bios)
    ret = radeon_atombios_get_tmds_info(radeon_encoder, tmds);
   else
    ret = radeon_legacy_get_tmds_info_from_combios(radeon_encoder, tmds);
  }
  if (val == 1 || ret == 0) {
   radeon_legacy_get_tmds_info_from_table(radeon_encoder, tmds);
  }
  radeon_property_change_mode(&radeon_encoder->base);
 }

 if (property == dev->mode_config.scaling_mode_property) {
  enum radeon_rmx_type rmx_type;

  if (connector->encoder)
   radeon_encoder = to_radeon_encoder(connector->encoder);
  else {
   const struct drm_connector_helper_funcs *connector_funcs = connector->helper_private;
   radeon_encoder = to_radeon_encoder(connector_funcs->best_encoder(connector));
  }

  switch (val) {
  default:
  case 128: rmx_type = RMX_OFF; break;
  case 130: rmx_type = RMX_CENTER; break;
  case 131: rmx_type = RMX_ASPECT; break;
  case 129: rmx_type = RMX_FULL; break;
  }
  if (radeon_encoder->rmx_type == rmx_type)
   return 0;

  if ((rmx_type != 128) &&
      (radeon_encoder->native_mode.clock == 0))
   return 0;

  radeon_encoder->rmx_type = rmx_type;

  radeon_property_change_mode(&radeon_encoder->base);
 }

 if (property == rdev->mode_info.output_csc_property) {
  if (connector->encoder)
   radeon_encoder = to_radeon_encoder(connector->encoder);
  else {
   const struct drm_connector_helper_funcs *connector_funcs = connector->helper_private;
   radeon_encoder = to_radeon_encoder(connector_funcs->best_encoder(connector));
  }

  if (radeon_encoder->output_csc == val)
   return 0;

  radeon_encoder->output_csc = val;

  if (connector->encoder && connector->encoder->crtc) {
   struct drm_crtc *crtc = connector->encoder->crtc;
   struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);

   radeon_crtc->output_csc = radeon_encoder->output_csc;





   crtc->funcs->gamma_set(crtc, ((void*)0), ((void*)0), ((void*)0), 0, ((void*)0));
  }
 }

 return 0;
}
