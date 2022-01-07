
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int lane_count; int aux; int train_set; } ;


 int DP_TRAINING_PATTERN_DISABLE ;
 int DP_TRAINING_PATTERN_MASK ;
 int DP_TRAINING_PATTERN_SET ;
 int drm_dp_dpcd_write (int *,int ,int*,int) ;
 int intel_dp_program_link_training_pattern (struct intel_dp*,int) ;
 int memcpy (int*,int ,int) ;

__attribute__((used)) static bool
intel_dp_set_link_train(struct intel_dp *intel_dp,
   u8 dp_train_pat)
{
 u8 buf[sizeof(intel_dp->train_set) + 1];
 int ret, len;

 intel_dp_program_link_training_pattern(intel_dp, dp_train_pat);

 buf[0] = dp_train_pat;
 if ((dp_train_pat & DP_TRAINING_PATTERN_MASK) ==
     DP_TRAINING_PATTERN_DISABLE) {

  len = 1;
 } else {

  memcpy(buf + 1, intel_dp->train_set, intel_dp->lane_count);
  len = intel_dp->lane_count + 1;
 }

 ret = drm_dp_dpcd_write(&intel_dp->aux, DP_TRAINING_PATTERN_SET,
    buf, len);

 return ret == len;
}
