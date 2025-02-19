
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int test_type; } ;
struct intel_dp {int aux; TYPE_1__ compliance; } ;


 int DP_TEST_ACK ;




 int DP_TEST_NAK ;
 int DP_TEST_REQUEST ;
 int DP_TEST_RESPONSE ;
 int DRM_DEBUG_KMS (char*,...) ;
 int drm_dp_dpcd_readb (int *,int ,int*) ;
 int drm_dp_dpcd_writeb (int *,int ,int) ;
 int intel_dp_autotest_edid (struct intel_dp*) ;
 int intel_dp_autotest_link_training (struct intel_dp*) ;
 int intel_dp_autotest_phy_pattern (struct intel_dp*) ;
 int intel_dp_autotest_video_pattern (struct intel_dp*) ;

__attribute__((used)) static void intel_dp_handle_test_request(struct intel_dp *intel_dp)
{
 u8 response = DP_TEST_NAK;
 u8 request = 0;
 int status;

 status = drm_dp_dpcd_readb(&intel_dp->aux, DP_TEST_REQUEST, &request);
 if (status <= 0) {
  DRM_DEBUG_KMS("Could not read test request from sink\n");
  goto update_status;
 }

 switch (request) {
 case 129:
  DRM_DEBUG_KMS("LINK_TRAINING test requested\n");
  response = intel_dp_autotest_link_training(intel_dp);
  break;
 case 128:
  DRM_DEBUG_KMS("TEST_PATTERN test requested\n");
  response = intel_dp_autotest_video_pattern(intel_dp);
  break;
 case 131:
  DRM_DEBUG_KMS("EDID test requested\n");
  response = intel_dp_autotest_edid(intel_dp);
  break;
 case 130:
  DRM_DEBUG_KMS("PHY_PATTERN test requested\n");
  response = intel_dp_autotest_phy_pattern(intel_dp);
  break;
 default:
  DRM_DEBUG_KMS("Invalid test request '%02x'\n", request);
  break;
 }

 if (response & DP_TEST_ACK)
  intel_dp->compliance.test_type = request;

update_status:
 status = drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_RESPONSE, response);
 if (status <= 0)
  DRM_DEBUG_KMS("Could not write test response to sink\n");
}
