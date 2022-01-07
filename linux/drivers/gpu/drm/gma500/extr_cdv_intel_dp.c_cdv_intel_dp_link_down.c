
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int DP; int output_reg; } ;


 int DP_LINK_TRAIN_MASK ;
 int DP_LINK_TRAIN_PAT_IDLE ;
 int DP_PORT_EN ;
 int DRM_DEBUG_KMS (char*) ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 int msleep (int) ;

__attribute__((used)) static void
cdv_intel_dp_link_down(struct gma_encoder *encoder)
{
 struct drm_device *dev = encoder->base.dev;
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 uint32_t DP = intel_dp->DP;

 if ((REG_READ(intel_dp->output_reg) & DP_PORT_EN) == 0)
  return;

 DRM_DEBUG_KMS("\n");


 {
  DP &= ~DP_LINK_TRAIN_MASK;
  REG_WRITE(intel_dp->output_reg, DP | DP_LINK_TRAIN_PAT_IDLE);
 }
 REG_READ(intel_dp->output_reg);

 msleep(17);

 REG_WRITE(intel_dp->output_reg, DP & ~DP_PORT_EN);
 REG_READ(intel_dp->output_reg);
}
