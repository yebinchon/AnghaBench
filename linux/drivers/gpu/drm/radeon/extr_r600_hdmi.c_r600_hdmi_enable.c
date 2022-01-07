
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct radeon_encoder_atom_dig {TYPE_2__* afmt; } ;
struct radeon_encoder {int encoder_id; struct radeon_encoder_atom_dig* enc_priv; } ;
struct TYPE_3__ {scalar_t__ installed; } ;
struct radeon_device {TYPE_1__ irq; int dev; } ;
struct drm_encoder {struct drm_device* dev; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct TYPE_4__ {int enabled; scalar_t__ offset; int id; } ;


 int ASIC_IS_DCE3 (struct radeon_device*) ;
 int AVIVO_LVTMA_CNTL ;
 int AVIVO_LVTMA_CNTL_HDMI_EN ;
 int AVIVO_TMDSA_CNTL ;
 int AVIVO_TMDSA_CNTL_HDMI_EN ;
 int DDIA_CNTL ;
 int DDIA_HDMI_EN ;
 int DRM_DEBUG (char*,char*,scalar_t__,int) ;




 scalar_t__ HDMI0_CONTROL ;
 int HDMI0_ENABLE ;
 int HDMI0_ERROR_ACK ;
 int HDMI0_STREAM (int ) ;
 int HDMI0_STREAM_DDIA ;
 int HDMI0_STREAM_DVOA ;
 int HDMI0_STREAM_LVTMA ;
 int HDMI0_STREAM_TMDSA ;
 int WREG32 (scalar_t__,int ) ;
 int WREG32_AND (int ,int ) ;
 int WREG32_OR (int ,int ) ;
 int dev_err (int ,char*,int) ;
 int radeon_irq_kms_disable_afmt (struct radeon_device*,int ) ;
 int radeon_irq_kms_enable_afmt (struct radeon_device*,int ) ;
 struct radeon_encoder* to_radeon_encoder (struct drm_encoder*) ;

void r600_hdmi_enable(struct drm_encoder *encoder, bool enable)
{
 struct drm_device *dev = encoder->dev;
 struct radeon_device *rdev = dev->dev_private;
 struct radeon_encoder *radeon_encoder = to_radeon_encoder(encoder);
 struct radeon_encoder_atom_dig *dig = radeon_encoder->enc_priv;
 u32 hdmi = HDMI0_ERROR_ACK;

 if (!dig || !dig->afmt)
  return;


 if (!ASIC_IS_DCE3(rdev)) {
  if (enable)
   hdmi |= HDMI0_ENABLE;
  switch (radeon_encoder->encoder_id) {
  case 129:
   if (enable) {
    WREG32_OR(AVIVO_TMDSA_CNTL, AVIVO_TMDSA_CNTL_HDMI_EN);
    hdmi |= HDMI0_STREAM(HDMI0_STREAM_TMDSA);
   } else {
    WREG32_AND(AVIVO_TMDSA_CNTL, ~AVIVO_TMDSA_CNTL_HDMI_EN);
   }
   break;
  case 128:
   if (enable) {
    WREG32_OR(AVIVO_LVTMA_CNTL, AVIVO_LVTMA_CNTL_HDMI_EN);
    hdmi |= HDMI0_STREAM(HDMI0_STREAM_LVTMA);
   } else {
    WREG32_AND(AVIVO_LVTMA_CNTL, ~AVIVO_LVTMA_CNTL_HDMI_EN);
   }
   break;
  case 131:
   if (enable) {
    WREG32_OR(DDIA_CNTL, DDIA_HDMI_EN);
    hdmi |= HDMI0_STREAM(HDMI0_STREAM_DDIA);
   } else {
    WREG32_AND(DDIA_CNTL, ~DDIA_HDMI_EN);
   }
   break;
  case 130:
   if (enable)
    hdmi |= HDMI0_STREAM(HDMI0_STREAM_DVOA);
   break;
  default:
   dev_err(rdev->dev, "Invalid encoder for HDMI: 0x%X\n",
    radeon_encoder->encoder_id);
   break;
  }
  WREG32(HDMI0_CONTROL + dig->afmt->offset, hdmi);
 }

 if (rdev->irq.installed) {


  if (enable)
   radeon_irq_kms_enable_afmt(rdev, dig->afmt->id);
  else
   radeon_irq_kms_disable_afmt(rdev, dig->afmt->id);
 }

 dig->afmt->enabled = enable;

 DRM_DEBUG("%sabling HDMI interface @ 0x%04X for encoder 0x%x\n",
    enable ? "En" : "Dis", dig->afmt->offset, radeon_encoder->encoder_id);
}
