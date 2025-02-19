
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_hdmi_acr {int n_48khz; int cts_48khz; int n_44_1khz; int cts_44_1khz; int n_32khz; int cts_32khz; } ;
struct radeon_device {int dummy; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 scalar_t__ DCE3_HDMI0_ACR_PACKET_CONTROL ;
 scalar_t__ HDMI0_ACR_32_0 ;
 scalar_t__ HDMI0_ACR_32_1 ;
 scalar_t__ HDMI0_ACR_44_0 ;
 scalar_t__ HDMI0_ACR_44_1 ;
 scalar_t__ HDMI0_ACR_48_0 ;
 scalar_t__ HDMI0_ACR_48_1 ;
 int HDMI0_ACR_AUTO_SEND ;
 int HDMI0_ACR_CTS_32 (int ) ;
 int HDMI0_ACR_CTS_32_MASK ;
 int HDMI0_ACR_CTS_44 (int ) ;
 int HDMI0_ACR_CTS_44_MASK ;
 int HDMI0_ACR_CTS_48 (int ) ;
 int HDMI0_ACR_CTS_48_MASK ;
 int HDMI0_ACR_N_32 (int ) ;
 int HDMI0_ACR_N_32_MASK ;
 int HDMI0_ACR_N_44 (int ) ;
 int HDMI0_ACR_N_44_MASK ;
 int HDMI0_ACR_N_48 (int ) ;
 int HDMI0_ACR_N_48_MASK ;
 int HDMI0_ACR_SOURCE ;
 int WREG32 (scalar_t__,int) ;
 int WREG32_P (scalar_t__,int ,int ) ;

void dce3_2_hdmi_update_acr(struct drm_encoder *encoder, long offset,
 const struct radeon_hdmi_acr *acr)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;

 WREG32(DCE3_HDMI0_ACR_PACKET_CONTROL + offset,
  HDMI0_ACR_SOURCE |
  HDMI0_ACR_AUTO_SEND);

 WREG32_P(HDMI0_ACR_32_0 + offset,
  HDMI0_ACR_CTS_32(acr->cts_32khz),
  ~HDMI0_ACR_CTS_32_MASK);
 WREG32_P(HDMI0_ACR_32_1 + offset,
  HDMI0_ACR_N_32(acr->n_32khz),
  ~HDMI0_ACR_N_32_MASK);

 WREG32_P(HDMI0_ACR_44_0 + offset,
  HDMI0_ACR_CTS_44(acr->cts_44_1khz),
  ~HDMI0_ACR_CTS_44_MASK);
 WREG32_P(HDMI0_ACR_44_1 + offset,
  HDMI0_ACR_N_44(acr->n_44_1khz),
  ~HDMI0_ACR_N_44_MASK);

 WREG32_P(HDMI0_ACR_48_0 + offset,
  HDMI0_ACR_CTS_48(acr->cts_48khz),
  ~HDMI0_ACR_CTS_48_MASK);
 WREG32_P(HDMI0_ACR_48_1 + offset,
  HDMI0_ACR_N_48(acr->n_48khz),
  ~HDMI0_ACR_N_48_MASK);
}
