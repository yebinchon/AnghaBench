
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_display_mode {int clock; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_encoder_atom_dig {int lcd_ss_id; } ;
struct amdgpu_encoder {int active_device; struct amdgpu_encoder_atom_dig* enc_priv; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {int bpc; int ss_enabled; int adjusted_clock; int ss; int encoder; } ;
struct amdgpu_connector_atom_dig {int dp_clock; } ;
struct amdgpu_connector {int pixelclock_for_modeset; struct amdgpu_connector_atom_dig* con_priv; } ;


 int ASIC_INTERNAL_SS_ON_DP ;
 int ASIC_INTERNAL_SS_ON_HDMI ;
 int ASIC_INTERNAL_SS_ON_TMDS ;
 int ATOM_DEVICE_DFP_SUPPORT ;
 int ATOM_DEVICE_LCD_SUPPORT ;





 scalar_t__ ENCODER_OBJECT_ID_NONE ;
 int amdgpu_atombios_crtc_adjust_pll (struct drm_crtc*,struct drm_display_mode*) ;
 int amdgpu_atombios_encoder_get_encoder_mode (int ) ;
 void* amdgpu_atombios_get_asic_ss_info (struct amdgpu_device*,int *,int ,int) ;
 int amdgpu_connector_get_monitor_bpc (struct drm_connector*) ;
 scalar_t__ amdgpu_encoder_get_dp_bridge_encoder_id (int ) ;
 struct drm_connector* amdgpu_get_connector_for_encoder (int ) ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (struct drm_crtc*) ;
 struct amdgpu_encoder* to_amdgpu_encoder (int ) ;

int amdgpu_atombios_crtc_prepare_pll(struct drm_crtc *crtc,
         struct drm_display_mode *mode)
{
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder =
  to_amdgpu_encoder(amdgpu_crtc->encoder);
 int encoder_mode = amdgpu_atombios_encoder_get_encoder_mode(amdgpu_crtc->encoder);

 amdgpu_crtc->bpc = 8;
 amdgpu_crtc->ss_enabled = 0;

 if ((amdgpu_encoder->active_device & (ATOM_DEVICE_LCD_SUPPORT | ATOM_DEVICE_DFP_SUPPORT)) ||
     (amdgpu_encoder_get_dp_bridge_encoder_id(amdgpu_crtc->encoder) != ENCODER_OBJECT_ID_NONE)) {
  struct amdgpu_encoder_atom_dig *dig = amdgpu_encoder->enc_priv;
  struct drm_connector *connector =
   amdgpu_get_connector_for_encoder(amdgpu_crtc->encoder);
  struct amdgpu_connector *amdgpu_connector =
   to_amdgpu_connector(connector);
  struct amdgpu_connector_atom_dig *dig_connector =
   amdgpu_connector->con_priv;
  int dp_clock;


  amdgpu_connector->pixelclock_for_modeset = mode->clock;
  amdgpu_crtc->bpc = amdgpu_connector_get_monitor_bpc(connector);

  switch (encoder_mode) {
  case 131:
  case 132:

   dp_clock = dig_connector->dp_clock / 10;
   amdgpu_crtc->ss_enabled =
    amdgpu_atombios_get_asic_ss_info(adev, &amdgpu_crtc->ss,
         ASIC_INTERNAL_SS_ON_DP,
         dp_clock);
   break;
  case 128:
   amdgpu_crtc->ss_enabled =
    amdgpu_atombios_get_asic_ss_info(adev,
         &amdgpu_crtc->ss,
         dig->lcd_ss_id,
         mode->clock / 10);
   break;
  case 130:
   amdgpu_crtc->ss_enabled =
    amdgpu_atombios_get_asic_ss_info(adev,
         &amdgpu_crtc->ss,
         ASIC_INTERNAL_SS_ON_TMDS,
         mode->clock / 10);
   break;
  case 129:
   amdgpu_crtc->ss_enabled =
    amdgpu_atombios_get_asic_ss_info(adev,
         &amdgpu_crtc->ss,
         ASIC_INTERNAL_SS_ON_HDMI,
         mode->clock / 10);
   break;
  default:
   break;
  }
 }


 amdgpu_crtc->adjusted_clock = amdgpu_atombios_crtc_adjust_pll(crtc, mode);

 return 0;
}
