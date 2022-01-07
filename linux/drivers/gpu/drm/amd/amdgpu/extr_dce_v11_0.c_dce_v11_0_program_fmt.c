
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_encoder {int crtc; struct drm_device* dev; } ;
struct drm_device {struct amdgpu_device* dev_private; } ;
struct drm_connector {int dummy; } ;
struct amdgpu_encoder {int devices; scalar_t__ encoder_id; } ;
struct amdgpu_device {int dummy; } ;
struct amdgpu_crtc {scalar_t__ crtc_offset; } ;
struct amdgpu_connector {int dither; } ;
typedef enum amdgpu_connector_dither { ____Placeholder_amdgpu_connector_dither } amdgpu_connector_dither ;


 int AMDGPU_FMT_DITHER_DISABLE ;
 int AMDGPU_FMT_DITHER_ENABLE ;
 int ATOM_DEVICE_LCD_SUPPORT ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1 ;
 scalar_t__ ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2 ;
 int FMT_BIT_DEPTH_CONTROL ;
 int FMT_FRAME_RANDOM_ENABLE ;
 int FMT_HIGHPASS_RANDOM_ENABLE ;
 int FMT_RGB_RANDOM_ENABLE ;
 int FMT_SPATIAL_DITHER_DEPTH ;
 int FMT_SPATIAL_DITHER_EN ;
 int FMT_TRUNCATE_DEPTH ;
 int FMT_TRUNCATE_EN ;
 int REG_SET_FIELD (int ,int ,int ,int) ;
 int WREG32 (scalar_t__,int ) ;
 int amdgpu_connector_get_monitor_bpc (struct drm_connector*) ;
 struct drm_connector* amdgpu_get_connector_for_encoder (struct drm_encoder*) ;
 scalar_t__ mmFMT_BIT_DEPTH_CONTROL ;
 struct amdgpu_connector* to_amdgpu_connector (struct drm_connector*) ;
 struct amdgpu_crtc* to_amdgpu_crtc (int ) ;
 struct amdgpu_encoder* to_amdgpu_encoder (struct drm_encoder*) ;

__attribute__((used)) static void dce_v11_0_program_fmt(struct drm_encoder *encoder)
{
 struct drm_device *dev = encoder->dev;
 struct amdgpu_device *adev = dev->dev_private;
 struct amdgpu_encoder *amdgpu_encoder = to_amdgpu_encoder(encoder);
 struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(encoder->crtc);
 struct drm_connector *connector = amdgpu_get_connector_for_encoder(encoder);
 int bpc = 0;
 u32 tmp = 0;
 enum amdgpu_connector_dither dither = AMDGPU_FMT_DITHER_DISABLE;

 if (connector) {
  struct amdgpu_connector *amdgpu_connector = to_amdgpu_connector(connector);
  bpc = amdgpu_connector_get_monitor_bpc(connector);
  dither = amdgpu_connector->dither;
 }


 if (amdgpu_encoder->devices & ATOM_DEVICE_LCD_SUPPORT)
  return;


 if ((amdgpu_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC1) ||
     (amdgpu_encoder->encoder_id == ENCODER_OBJECT_ID_INTERNAL_KLDSCP_DAC2))
  return;

 if (bpc == 0)
  return;

 switch (bpc) {
 case 6:
  if (dither == AMDGPU_FMT_DITHER_ENABLE) {

   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_FRAME_RANDOM_ENABLE, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_HIGHPASS_RANDOM_ENABLE, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_EN, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_DEPTH, 0);
  } else {
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_EN, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_DEPTH, 0);
  }
  break;
 case 8:
  if (dither == AMDGPU_FMT_DITHER_ENABLE) {

   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_FRAME_RANDOM_ENABLE, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_HIGHPASS_RANDOM_ENABLE, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_RGB_RANDOM_ENABLE, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_EN, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_DEPTH, 1);
  } else {
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_EN, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_DEPTH, 1);
  }
  break;
 case 10:
  if (dither == AMDGPU_FMT_DITHER_ENABLE) {

   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_FRAME_RANDOM_ENABLE, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_HIGHPASS_RANDOM_ENABLE, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_RGB_RANDOM_ENABLE, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_EN, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_SPATIAL_DITHER_DEPTH, 2);
  } else {
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_EN, 1);
   tmp = REG_SET_FIELD(tmp, FMT_BIT_DEPTH_CONTROL, FMT_TRUNCATE_DEPTH, 2);
  }
  break;
 default:

  break;
 }

 WREG32(mmFMT_BIT_DEPTH_CONTROL + amdgpu_crtc->crtc_offset, tmp);
}
