
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_dp {int downstream_ports; int dpcd; struct intel_connector* attached_connector; } ;
struct intel_crtc_state {int pipe_bpp; } ;
struct TYPE_5__ {scalar_t__ bpc; } ;
struct TYPE_6__ {TYPE_1__ display_info; } ;
struct intel_connector {TYPE_2__ base; } ;
struct TYPE_7__ {int bpp; } ;
struct TYPE_8__ {TYPE_3__ edp; } ;
struct drm_i915_private {TYPE_4__ vbt; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 struct drm_i915_private* dp_to_i915 (struct intel_dp*) ;
 int drm_dp_downstream_max_bpc (int ,int ) ;
 scalar_t__ intel_dp_is_edp (struct intel_dp*) ;
 int min (int,int) ;

__attribute__((used)) static int intel_dp_compute_bpp(struct intel_dp *intel_dp,
    struct intel_crtc_state *pipe_config)
{
 struct drm_i915_private *dev_priv = dp_to_i915(intel_dp);
 struct intel_connector *intel_connector = intel_dp->attached_connector;
 int bpp, bpc;

 bpp = pipe_config->pipe_bpp;
 bpc = drm_dp_downstream_max_bpc(intel_dp->dpcd, intel_dp->downstream_ports);

 if (bpc > 0)
  bpp = min(bpp, 3*bpc);

 if (intel_dp_is_edp(intel_dp)) {

  if (intel_connector->base.display_info.bpc == 0 &&
      dev_priv->vbt.edp.bpp && dev_priv->vbt.edp.bpp < bpp) {
   DRM_DEBUG_KMS("clamping bpp for eDP panel to BIOS-provided %i\n",
          dev_priv->vbt.edp.bpp);
   bpp = dev_priv->vbt.edp.bpp;
  }
 }

 return bpp;
}
