
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int* dpcd; scalar_t__* edp_dpcd; int fec_capable; int aux; int dsc_dpcd; } ;


 size_t DP_DPCD_REV ;
 int DP_DSC_SUPPORT ;
 scalar_t__ DP_EDP_14 ;
 int DP_FEC_CAPABILITY ;
 int DRM_DEBUG_KMS (char*,int,...) ;
 int DRM_ERROR (char*,...) ;
 scalar_t__ drm_dp_dpcd_read (int *,int ,int ,int) ;
 scalar_t__ drm_dp_dpcd_readb (int *,int ,int *) ;
 int intel_dp_is_edp (struct intel_dp*) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static void intel_dp_get_dsc_sink_cap(struct intel_dp *intel_dp)
{




 memset(intel_dp->dsc_dpcd, 0, sizeof(intel_dp->dsc_dpcd));


 intel_dp->fec_capable = 0;


 if (intel_dp->dpcd[DP_DPCD_REV] >= 0x14 ||
     intel_dp->edp_dpcd[0] >= DP_EDP_14) {
  if (drm_dp_dpcd_read(&intel_dp->aux, DP_DSC_SUPPORT,
         intel_dp->dsc_dpcd,
         sizeof(intel_dp->dsc_dpcd)) < 0)
   DRM_ERROR("Failed to read DPCD register 0x%x\n",
      DP_DSC_SUPPORT);

  DRM_DEBUG_KMS("DSC DPCD: %*ph\n",
         (int)sizeof(intel_dp->dsc_dpcd),
         intel_dp->dsc_dpcd);


  if (!intel_dp_is_edp(intel_dp) &&
      drm_dp_dpcd_readb(&intel_dp->aux, DP_FEC_CAPABILITY,
          &intel_dp->fec_capable) < 0)
   DRM_ERROR("Failed to read FEC DPCD register\n");

  DRM_DEBUG_KMS("FEC CAPABILITY: %x\n", intel_dp->fec_capable);
 }
}
