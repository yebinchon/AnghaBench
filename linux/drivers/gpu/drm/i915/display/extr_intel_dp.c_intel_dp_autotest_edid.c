
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int edid; } ;
struct TYPE_5__ {int test_active; TYPE_1__ test_data; } ;
struct TYPE_6__ {int i2c_defer_count; scalar_t__ i2c_nack_count; } ;
struct intel_dp {TYPE_2__ compliance; TYPE_3__ aux; struct intel_connector* attached_connector; } ;
struct drm_connector {scalar_t__ edid_corrupt; } ;
struct intel_connector {struct edid* detect_edid; struct drm_connector base; } ;
struct edid {int checksum; int extensions; } ;


 int DP_TEST_ACK ;
 int DP_TEST_EDID_CHECKSUM ;
 int DP_TEST_EDID_CHECKSUM_WRITE ;
 int DRM_DEBUG_KMS (char*,...) ;
 int INTEL_DP_RESOLUTION_FAILSAFE ;
 int INTEL_DP_RESOLUTION_PREFERRED ;
 scalar_t__ drm_dp_dpcd_writeb (TYPE_3__*,int ,int ) ;

__attribute__((used)) static u8 intel_dp_autotest_edid(struct intel_dp *intel_dp)
{
 u8 test_result = DP_TEST_ACK;
 struct intel_connector *intel_connector = intel_dp->attached_connector;
 struct drm_connector *connector = &intel_connector->base;

 if (intel_connector->detect_edid == ((void*)0) ||
     connector->edid_corrupt ||
     intel_dp->aux.i2c_defer_count > 6) {







  if (intel_dp->aux.i2c_nack_count > 0 ||
   intel_dp->aux.i2c_defer_count > 0)
   DRM_DEBUG_KMS("EDID read had %d NACKs, %d DEFERs\n",
          intel_dp->aux.i2c_nack_count,
          intel_dp->aux.i2c_defer_count);
  intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_FAILSAFE;
 } else {
  struct edid *block = intel_connector->detect_edid;




  block += intel_connector->detect_edid->extensions;

  if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_TEST_EDID_CHECKSUM,
           block->checksum) <= 0)
   DRM_DEBUG_KMS("Failed to write EDID checksum\n");

  test_result = DP_TEST_ACK | DP_TEST_EDID_CHECKSUM_WRITE;
  intel_dp->compliance.test_data.edid = INTEL_DP_RESOLUTION_PREFERRED;
 }


 intel_dp->compliance.test_active = 1;

 return test_result;
}
