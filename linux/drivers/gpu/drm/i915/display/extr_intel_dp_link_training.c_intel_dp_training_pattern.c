
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_dp {int link_rate; int dpcd; } ;


 int DP_TRAINING_PATTERN_2 ;
 int DP_TRAINING_PATTERN_3 ;
 int DP_TRAINING_PATTERN_4 ;
 int DRM_DEBUG_KMS (char*) ;
 int drm_dp_tps3_supported (int ) ;
 int drm_dp_tps4_supported (int ) ;
 int intel_dp_source_supports_hbr2 (struct intel_dp*) ;
 int intel_dp_source_supports_hbr3 (struct intel_dp*) ;

__attribute__((used)) static u32 intel_dp_training_pattern(struct intel_dp *intel_dp)
{
 bool source_tps3, sink_tps3, source_tps4, sink_tps4;







 source_tps4 = intel_dp_source_supports_hbr3(intel_dp);
 sink_tps4 = drm_dp_tps4_supported(intel_dp->dpcd);
 if (source_tps4 && sink_tps4) {
  return DP_TRAINING_PATTERN_4;
 } else if (intel_dp->link_rate == 810000) {
  if (!source_tps4)
   DRM_DEBUG_KMS("8.1 Gbps link rate without source HBR3/TPS4 support\n");
  if (!sink_tps4)
   DRM_DEBUG_KMS("8.1 Gbps link rate without sink TPS4 support\n");
 }





 source_tps3 = intel_dp_source_supports_hbr2(intel_dp);
 sink_tps3 = drm_dp_tps3_supported(intel_dp->dpcd);
 if (source_tps3 && sink_tps3) {
  return DP_TRAINING_PATTERN_3;
 } else if (intel_dp->link_rate >= 540000) {
  if (!source_tps3)
   DRM_DEBUG_KMS(">=5.4/6.48 Gbps link rate without source HBR2/TPS3 support\n");
  if (!sink_tps3)
   DRM_DEBUG_KMS(">=5.4/6.48 Gbps link rate without sink TPS3 support\n");
 }

 return DP_TRAINING_PATTERN_2;
}
