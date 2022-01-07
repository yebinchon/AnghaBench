
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_hdmi_acr {int n_32khz; int n_44_1khz; int n_48khz; int cts_48khz; int cts_44_1khz; int cts_32khz; } ;
struct radeon_device {int dummy; } ;
struct radeon_crtc {int bpc; } ;
struct drm_encoder {scalar_t__ crtc; struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ HDMI_ACR_32_0 ;
 scalar_t__ HDMI_ACR_32_1 ;
 scalar_t__ HDMI_ACR_44_0 ;
 scalar_t__ HDMI_ACR_44_1 ;
 scalar_t__ HDMI_ACR_48_0 ;
 scalar_t__ HDMI_ACR_48_1 ;
 int HDMI_ACR_AUTO_SEND ;
 int HDMI_ACR_CTS_32 (int ) ;
 int HDMI_ACR_CTS_44 (int ) ;
 int HDMI_ACR_CTS_48 (int ) ;
 scalar_t__ HDMI_ACR_PACKET_CONTROL ;
 int HDMI_ACR_SOURCE ;
 int WREG32 (scalar_t__,int) ;
 struct radeon_crtc* to_radeon_crtc (scalar_t__) ;

void evergreen_hdmi_update_acr(struct drm_encoder *encoder, long offset,
 const struct radeon_hdmi_acr *acr)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 int bpc = 8;

 if (encoder->crtc) {
  struct radeon_crtc *radeon_crtc = to_radeon_crtc(encoder->crtc);
  bpc = radeon_crtc->bpc;
 }

 if (bpc > 8)
  WREG32(HDMI_ACR_PACKET_CONTROL + offset,
   HDMI_ACR_AUTO_SEND);
 else
  WREG32(HDMI_ACR_PACKET_CONTROL + offset,
   HDMI_ACR_SOURCE |
   HDMI_ACR_AUTO_SEND);

 WREG32(HDMI_ACR_32_0 + offset, HDMI_ACR_CTS_32(acr->cts_32khz));
 WREG32(HDMI_ACR_32_1 + offset, acr->n_32khz);

 WREG32(HDMI_ACR_44_0 + offset, HDMI_ACR_CTS_44(acr->cts_44_1khz));
 WREG32(HDMI_ACR_44_1 + offset, acr->n_44_1khz);

 WREG32(HDMI_ACR_48_0 + offset, HDMI_ACR_CTS_48(acr->cts_48khz));
 WREG32(HDMI_ACR_48_1 + offset, acr->n_48khz);
}
