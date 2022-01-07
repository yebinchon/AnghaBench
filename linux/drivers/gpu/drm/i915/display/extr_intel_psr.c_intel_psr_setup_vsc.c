
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_dp {int dummy; } ;
struct intel_digital_port {int base; int (* write_infoframe ) (int *,struct intel_crtc_state const*,int ,struct dp_sdp*,int) ;} ;
struct intel_crtc_state {int dummy; } ;
struct TYPE_3__ {scalar_t__ colorimetry_support; scalar_t__ psr2_enabled; } ;
struct drm_i915_private {TYPE_1__ psr; } ;
struct TYPE_4__ {int HB1; int HB2; int HB3; scalar_t__ HB0; } ;
struct dp_sdp {TYPE_2__ sdp_header; } ;
typedef int psr_vsc ;


 int DP_SDP_VSC ;
 struct intel_digital_port* dp_to_dig_port (struct intel_dp*) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int memset (struct dp_sdp*,int ,int) ;
 int stub1 (int *,struct intel_crtc_state const*,int ,struct dp_sdp*,int) ;

__attribute__((used)) static void intel_psr_setup_vsc(struct intel_dp *intel_dp,
    const struct intel_crtc_state *crtc_state)
{
 struct intel_digital_port *intel_dig_port = dp_to_dig_port(intel_dp);
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct dp_sdp psr_vsc;

 if (dev_priv->psr.psr2_enabled) {

  memset(&psr_vsc, 0, sizeof(psr_vsc));
  psr_vsc.sdp_header.HB0 = 0;
  psr_vsc.sdp_header.HB1 = 0x7;
  if (dev_priv->psr.colorimetry_support) {
   psr_vsc.sdp_header.HB2 = 0x5;
   psr_vsc.sdp_header.HB3 = 0x13;
  } else {
   psr_vsc.sdp_header.HB2 = 0x4;
   psr_vsc.sdp_header.HB3 = 0xe;
  }
 } else {

  memset(&psr_vsc, 0, sizeof(psr_vsc));
  psr_vsc.sdp_header.HB0 = 0;
  psr_vsc.sdp_header.HB1 = 0x7;
  psr_vsc.sdp_header.HB2 = 0x2;
  psr_vsc.sdp_header.HB3 = 0x8;
 }

 intel_dig_port->write_infoframe(&intel_dig_port->base,
     crtc_state,
     DP_SDP_VSC, &psr_vsc, sizeof(psr_vsc));
}
