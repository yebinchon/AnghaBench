
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int aux; } ;
struct intel_crtc_state {int fec_enable; } ;


 int DP_FEC_CONFIGURATION ;
 int DP_FEC_READY ;
 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ drm_dp_dpcd_writeb (int *,int ,int ) ;

__attribute__((used)) static void intel_dp_sink_set_fec_ready(struct intel_dp *intel_dp,
     const struct intel_crtc_state *crtc_state)
{
 if (!crtc_state->fec_enable)
  return;

 if (drm_dp_dpcd_writeb(&intel_dp->aux, DP_FEC_CONFIGURATION, DP_FEC_READY) <= 0)
  DRM_DEBUG_KMS("Failed to set FEC_READY in the sink\n");
}
