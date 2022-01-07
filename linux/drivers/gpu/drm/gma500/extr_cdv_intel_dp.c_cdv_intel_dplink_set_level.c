
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct gma_encoder {struct cdv_intel_dp* dev_priv; } ;
struct cdv_intel_dp {int lane_count; int * train_set; } ;


 int DP_TRAINING_LANE0_SET ;
 int DRM_DEBUG_KMS (char*,int ,int) ;
 int cdv_intel_dp_aux_native_write (struct gma_encoder*,int ,int *,int) ;

__attribute__((used)) static bool
cdv_intel_dplink_set_level(struct gma_encoder *encoder,
   uint8_t dp_train_pat)
{

 int ret;
 struct cdv_intel_dp *intel_dp = encoder->dev_priv;

 ret = cdv_intel_dp_aux_native_write(encoder,
     DP_TRAINING_LANE0_SET,
     intel_dp->train_set,
     intel_dp->lane_count);

 if (ret != intel_dp->lane_count) {
  DRM_DEBUG_KMS("Failure in setting level %d, lane_cnt= %d\n",
    intel_dp->train_set[0], intel_dp->lane_count);
  return 0;
 }
 return 1;
}
