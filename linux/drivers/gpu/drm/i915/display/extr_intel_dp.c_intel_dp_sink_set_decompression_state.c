
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_dp {int aux; } ;
struct TYPE_2__ {int compression_enable; } ;
struct intel_crtc_state {TYPE_1__ dsc_params; } ;


 int DP_DECOMPRESSION_EN ;
 int DP_DSC_ENABLE ;
 int DRM_DEBUG_KMS (char*,char*) ;
 int drm_dp_dpcd_writeb (int *,int ,int ) ;

void intel_dp_sink_set_decompression_state(struct intel_dp *intel_dp,
        const struct intel_crtc_state *crtc_state,
        bool enable)
{
 int ret;

 if (!crtc_state->dsc_params.compression_enable)
  return;

 ret = drm_dp_dpcd_writeb(&intel_dp->aux, DP_DSC_ENABLE,
     enable ? DP_DECOMPRESSION_EN : 0);
 if (ret < 0)
  DRM_DEBUG_KMS("Failed to %s sink decompression state\n",
         enable ? "enable" : "disable");
}
