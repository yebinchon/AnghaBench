
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct intel_dp {TYPE_3__* attached_connector; } ;
struct TYPE_9__ {int active; int crtc; } ;
struct intel_crtc_state {int cpu_transcoder; TYPE_4__ base; } ;
struct intel_crtc {int dummy; } ;
struct TYPE_10__ {scalar_t__ type; int refresh_rate_type; struct intel_dp* dp; } ;
struct drm_i915_private {TYPE_5__ drrs; } ;
typedef int i915_reg_t ;
typedef enum drrs_refresh_rate_type { ____Placeholder_drrs_refresh_rate_type } drrs_refresh_rate_type ;
struct TYPE_7__ {TYPE_1__* downclock_mode; } ;
struct TYPE_8__ {TYPE_2__ panel; } ;
struct TYPE_6__ {int vrefresh; } ;


 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_ERROR (char*) ;



 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int INTEL_GEN (struct drm_i915_private*) ;
 scalar_t__ IS_CHERRYVIEW (struct drm_i915_private*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_i915_private*) ;
 int M1_N1 ;
 int M2_N2 ;
 int PIPECONF (int ) ;
 int PIPECONF_EDP_RR_MODE_SWITCH ;
 int PIPECONF_EDP_RR_MODE_SWITCH_VLV ;
 scalar_t__ SEAMLESS_DRRS_SUPPORT ;
 int intel_dp_set_m_n (struct intel_crtc_state const*,int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static void intel_dp_set_drrs_state(struct drm_i915_private *dev_priv,
        const struct intel_crtc_state *crtc_state,
        int refresh_rate)
{
 struct intel_dp *intel_dp = dev_priv->drrs.dp;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc_state->base.crtc);
 enum drrs_refresh_rate_type index = 130;

 if (refresh_rate <= 0) {
  DRM_DEBUG_KMS("Refresh rate should be positive non-zero.\n");
  return;
 }

 if (intel_dp == ((void*)0)) {
  DRM_DEBUG_KMS("DRRS not supported.\n");
  return;
 }

 if (!intel_crtc) {
  DRM_DEBUG_KMS("DRRS: intel_crtc not initialized\n");
  return;
 }

 if (dev_priv->drrs.type < SEAMLESS_DRRS_SUPPORT) {
  DRM_DEBUG_KMS("Only Seamless DRRS supported.\n");
  return;
 }

 if (intel_dp->attached_connector->panel.downclock_mode->vrefresh ==
   refresh_rate)
  index = 129;

 if (index == dev_priv->drrs.refresh_rate_type) {
  DRM_DEBUG_KMS(
   "DRRS requested for previously set RR...ignoring\n");
  return;
 }

 if (!crtc_state->base.active) {
  DRM_DEBUG_KMS("eDP encoder disabled. CRTC not Active\n");
  return;
 }

 if (INTEL_GEN(dev_priv) >= 8 && !IS_CHERRYVIEW(dev_priv)) {
  switch (index) {
  case 130:
   intel_dp_set_m_n(crtc_state, M1_N1);
   break;
  case 129:
   intel_dp_set_m_n(crtc_state, M2_N2);
   break;
  case 128:
  default:
   DRM_ERROR("Unsupported refreshrate type\n");
  }
 } else if (INTEL_GEN(dev_priv) > 6) {
  i915_reg_t reg = PIPECONF(crtc_state->cpu_transcoder);
  u32 val;

  val = I915_READ(reg);
  if (index > 130) {
   if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
    val |= PIPECONF_EDP_RR_MODE_SWITCH_VLV;
   else
    val |= PIPECONF_EDP_RR_MODE_SWITCH;
  } else {
   if (IS_VALLEYVIEW(dev_priv) || IS_CHERRYVIEW(dev_priv))
    val &= ~PIPECONF_EDP_RR_MODE_SWITCH_VLV;
   else
    val &= ~PIPECONF_EDP_RR_MODE_SWITCH;
  }
  I915_WRITE(reg, val);
 }

 dev_priv->drrs.refresh_rate_type = index;

 DRM_DEBUG_KMS("eDP Refresh Rate set to : %dHz\n", refresh_rate);
}
