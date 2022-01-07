
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; TYPE_1__ base; } ;
struct drm_device {int dummy; } ;
struct cdv_intel_dp {int DP; int output_reg; int lane_count; int * link_status; int * train_set; int * link_configuration; } ;


 int DP_LINK_TRAIN_OFF ;
 int DP_LINK_TRAIN_PAT_2 ;
 int DP_TRAINING_PATTERN_2 ;
 int DP_TRAINING_PATTERN_DISABLE ;
 int DP_TRAINING_PATTERN_SET ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*) ;
 int REG_READ (int ) ;
 int REG_WRITE (int ,int) ;
 scalar_t__ cdv_intel_channel_eq_ok (struct gma_encoder*) ;
 int cdv_intel_clock_recovery_ok (int *,int ) ;
 int cdv_intel_dp_aux_native_write_1 (struct gma_encoder*,int ,int ) ;
 int cdv_intel_dp_get_link_status (struct gma_encoder*) ;
 int cdv_intel_dp_link_down (struct gma_encoder*) ;
 int cdv_intel_dp_set_link_train (struct gma_encoder*,int,int ) ;
 int cdv_intel_dp_set_vswing_premph (struct gma_encoder*,int ) ;
 int cdv_intel_dp_start_link_train (struct gma_encoder*) ;
 int cdv_intel_dplink_set_level (struct gma_encoder*,int ) ;
 int cdv_intel_get_adjust_train (struct gma_encoder*) ;
 int udelay (int) ;

__attribute__((used)) static void
cdv_intel_dp_complete_link_train(struct gma_encoder *encoder)
{
 struct drm_device *dev = encoder->base.dev;
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;
 bool channel_eq = 0;
 int tries, cr_tries;
 u32 reg;
 uint32_t DP = intel_dp->DP;


 tries = 0;
 cr_tries = 0;
 channel_eq = 0;

 DRM_DEBUG_KMS("\n");
  reg = DP | DP_LINK_TRAIN_PAT_2;

 for (;;) {

  DRM_DEBUG_KMS("DP Link Train Set %x, Link_config %x, %x\n",
    intel_dp->train_set[0],
    intel_dp->link_configuration[0],
    intel_dp->link_configuration[1]);


  if (!cdv_intel_dp_set_link_train(encoder, reg,
          DP_TRAINING_PATTERN_2)) {
   DRM_DEBUG_KMS("Failure in aux-transfer setting pattern 2\n");
  }


  if (cr_tries > 5) {
   DRM_ERROR("failed to train DP, aborting\n");
   cdv_intel_dp_link_down(encoder);
   break;
  }

  cdv_intel_dp_set_vswing_premph(encoder, intel_dp->train_set[0]);

  cdv_intel_dplink_set_level(encoder, DP_TRAINING_PATTERN_2);

  udelay(1000);
  if (!cdv_intel_dp_get_link_status(encoder))
   break;

  DRM_DEBUG_KMS("DP Link status %x, %x, %x, %x, %x, %x\n",
    intel_dp->link_status[0], intel_dp->link_status[1], intel_dp->link_status[2],
    intel_dp->link_status[3], intel_dp->link_status[4], intel_dp->link_status[5]);


  if (!cdv_intel_clock_recovery_ok(intel_dp->link_status, intel_dp->lane_count)) {
   cdv_intel_dp_start_link_train(encoder);
   cr_tries++;
   continue;
  }

  if (cdv_intel_channel_eq_ok(encoder)) {
   DRM_DEBUG_KMS("PT2 train is done\n");
   channel_eq = 1;
   break;
  }


  if (tries > 5) {
   cdv_intel_dp_link_down(encoder);
   cdv_intel_dp_start_link_train(encoder);
   tries = 0;
   cr_tries++;
   continue;
  }


  cdv_intel_get_adjust_train(encoder);
  ++tries;

 }

 reg = DP | DP_LINK_TRAIN_OFF;

 REG_WRITE(intel_dp->output_reg, reg);
 REG_READ(intel_dp->output_reg);
 cdv_intel_dp_aux_native_write_1(encoder,
        DP_TRAINING_PATTERN_SET, DP_TRAINING_PATTERN_DISABLE);
}
