
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {scalar_t__* dpcd; int aux; } ;


 size_t DP_DPCD_REV ;
 int DRM_DEBUG_KMS (char*,int,scalar_t__*) ;
 scalar_t__ drm_dp_dpcd_read (int *,int,scalar_t__*,int) ;
 int intel_dp_extended_receiver_capabilities (struct intel_dp*) ;

bool
intel_dp_read_dpcd(struct intel_dp *intel_dp)
{
 if (drm_dp_dpcd_read(&intel_dp->aux, 0x000, intel_dp->dpcd,
        sizeof(intel_dp->dpcd)) < 0)
  return 0;

 intel_dp_extended_receiver_capabilities(intel_dp);

 DRM_DEBUG_KMS("DPCD: %*ph\n", (int) sizeof(intel_dp->dpcd), intel_dp->dpcd);

 return intel_dp->dpcd[DP_DPCD_REV] != 0;
}
