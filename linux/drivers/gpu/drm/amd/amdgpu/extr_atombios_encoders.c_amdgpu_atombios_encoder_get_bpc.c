
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct drm_encoder {scalar_t__ crtc; } ;
struct amdgpu_crtc {int bpc; } ;


 int PANEL_10BIT_PER_COLOR ;
 int PANEL_12BIT_PER_COLOR ;
 int PANEL_16BIT_PER_COLOR ;
 int PANEL_6BIT_PER_COLOR ;
 int PANEL_8BIT_PER_COLOR ;
 int PANEL_BPC_UNDEFINE ;
 struct amdgpu_crtc* to_amdgpu_crtc (scalar_t__) ;

__attribute__((used)) static u8 amdgpu_atombios_encoder_get_bpc(struct drm_encoder *encoder)
{
 int bpc = 8;

 if (encoder->crtc) {
  struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(encoder->crtc);
  bpc = amdgpu_crtc->bpc;
 }

 switch (bpc) {
 case 0:
  return PANEL_BPC_UNDEFINE;
 case 6:
  return PANEL_6BIT_PER_COLOR;
 case 8:
 default:
  return PANEL_8BIT_PER_COLOR;
 case 10:
  return PANEL_10BIT_PER_COLOR;
 case 12:
  return PANEL_12BIT_PER_COLOR;
 case 16:
  return PANEL_16BIT_PER_COLOR;
 }
}
