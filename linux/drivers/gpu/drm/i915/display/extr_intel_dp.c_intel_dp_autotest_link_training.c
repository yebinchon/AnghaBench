
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int test_link_rate; int test_lane_count; } ;
struct intel_dp {TYPE_1__ compliance; int aux; } ;


 int DP_MAX_LANE_COUNT_MASK ;
 int DP_TEST_ACK ;
 int DP_TEST_LANE_COUNT ;
 int DP_TEST_LINK_RATE ;
 int DP_TEST_NAK ;
 int DRM_DEBUG_KMS (char*) ;
 int drm_dp_bw_code_to_link_rate (int ) ;
 int drm_dp_dpcd_readb (int *,int ,int *) ;
 int intel_dp_link_params_valid (struct intel_dp*,int,int ) ;

__attribute__((used)) static u8 intel_dp_autotest_link_training(struct intel_dp *intel_dp)
{
 int status = 0;
 int test_link_rate;
 u8 test_lane_count, test_link_bw;




 status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_LANE_COUNT,
       &test_lane_count);

 if (status <= 0) {
  DRM_DEBUG_KMS("Lane count read failed\n");
  return DP_TEST_NAK;
 }
 test_lane_count &= DP_MAX_LANE_COUNT_MASK;

 status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_LINK_RATE,
       &test_link_bw);
 if (status <= 0) {
  DRM_DEBUG_KMS("Link Rate read failed\n");
  return DP_TEST_NAK;
 }
 test_link_rate = drm_dp_bw_code_to_link_rate(test_link_bw);


 if (!intel_dp_link_params_valid(intel_dp, test_link_rate,
     test_lane_count))
  return DP_TEST_NAK;

 intel_dp->compliance.test_lane_count = test_lane_count;
 intel_dp->compliance.test_link_rate = test_link_rate;

 return DP_TEST_ACK;
}
