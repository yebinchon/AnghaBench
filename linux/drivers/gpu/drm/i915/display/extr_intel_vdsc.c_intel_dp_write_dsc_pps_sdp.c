
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_encoder {int base; } ;
struct intel_dp {int dummy; } ;
struct intel_digital_port {int (* write_infoframe ) (struct intel_encoder*,struct intel_crtc_state const*,int ,struct drm_dsc_pps_infoframe*,int) ;} ;
struct drm_dsc_config {int dummy; } ;
struct intel_crtc_state {struct drm_dsc_config dp_dsc_cfg; } ;
struct drm_dsc_pps_infoframe {int pps_payload; int pps_header; } ;
typedef int dp_dsc_pps_sdp ;


 int DP_SDP_PPS ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 int drm_dsc_dp_pps_header_init (int *) ;
 int drm_dsc_pps_payload_pack (int *,struct drm_dsc_config const*) ;
 struct intel_dp* enc_to_intel_dp (int *) ;
 int stub1 (struct intel_encoder*,struct intel_crtc_state const*,int ,struct drm_dsc_pps_infoframe*,int) ;

__attribute__((used)) static void intel_dp_write_dsc_pps_sdp(struct intel_encoder *encoder,
           const struct intel_crtc_state *crtc_state)
{
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 const struct drm_dsc_config *vdsc_cfg = &crtc_state->dp_dsc_cfg;
 struct drm_dsc_pps_infoframe dp_dsc_pps_sdp;


 drm_dsc_dp_pps_header_init(&dp_dsc_pps_sdp.pps_header);


 drm_dsc_pps_payload_pack(&dp_dsc_pps_sdp.pps_payload, vdsc_cfg);

 intel_dig_port->write_infoframe(encoder, crtc_state,
     DP_SDP_PPS, &dp_dsc_pps_sdp,
     sizeof(dp_dsc_pps_sdp));
}
