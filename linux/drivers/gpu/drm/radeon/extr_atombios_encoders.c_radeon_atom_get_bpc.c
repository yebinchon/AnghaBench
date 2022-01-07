
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_crtc {int bpc; } ;
struct drm_encoder {scalar_t__ crtc; } ;


 int PANEL_10BIT_PER_COLOR ;
 int PANEL_12BIT_PER_COLOR ;
 int PANEL_16BIT_PER_COLOR ;
 int PANEL_6BIT_PER_COLOR ;
 int PANEL_8BIT_PER_COLOR ;
 int PANEL_BPC_UNDEFINE ;
 struct radeon_crtc* to_radeon_crtc (scalar_t__) ;

__attribute__((used)) static u8 radeon_atom_get_bpc(struct drm_encoder *encoder)
{
 int bpc = 8;

 if (encoder->crtc) {
  struct radeon_crtc *radeon_crtc = to_radeon_crtc(encoder->crtc);
  bpc = radeon_crtc->bpc;
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
