
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct intel_dp {int* dpcd; int aux; } ;
typedef int dpcd_ext ;


 int DP_DP13_DPCD_REV ;
 size_t DP_DPCD_REV ;
 int DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT ;
 size_t DP_TRAINING_AUX_RD_INTERVAL ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*) ;
 int drm_dp_dpcd_read (int *,int ,int**,int) ;
 int memcmp (int*,int*,int) ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void
intel_dp_extended_receiver_capabilities(struct intel_dp *intel_dp)
{
 u8 dpcd_ext[6];
 if (!(intel_dp->dpcd[DP_TRAINING_AUX_RD_INTERVAL] &
       DP_EXTENDED_RECEIVER_CAP_FIELD_PRESENT))
  return;

 if (drm_dp_dpcd_read(&intel_dp->aux, DP_DP13_DPCD_REV,
        &dpcd_ext, sizeof(dpcd_ext)) != sizeof(dpcd_ext)) {
  DRM_ERROR("DPCD failed read at extended capabilities\n");
  return;
 }

 if (intel_dp->dpcd[DP_DPCD_REV] > dpcd_ext[DP_DPCD_REV]) {
  DRM_DEBUG_KMS("DPCD extended DPCD rev less than base DPCD rev\n");
  return;
 }

 if (!memcmp(intel_dp->dpcd, dpcd_ext, sizeof(dpcd_ext)))
  return;

 DRM_DEBUG_KMS("Base DPCD: %*ph\n",
        (int)sizeof(intel_dp->dpcd), intel_dp->dpcd);

 memcpy(intel_dp->dpcd, dpcd_ext, sizeof(dpcd_ext));
}
