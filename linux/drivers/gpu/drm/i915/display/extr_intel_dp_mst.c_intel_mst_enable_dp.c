
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct intel_dp_mst_encoder {struct intel_digital_port* primary; } ;
struct intel_dp {int mst_mgr; int active_mst_links; } ;
struct TYPE_3__ {int port; } ;
struct intel_digital_port {TYPE_1__ base; struct intel_dp dp; } ;
struct intel_crtc_state {scalar_t__ has_audio; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;


 int DP_TP_STATUS (int) ;
 int DP_TP_STATUS_ACT_SENT ;
 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_ERROR (char*) ;
 int drm_dp_check_act_status (int *) ;
 int drm_dp_update_payload_part2 (int *) ;
 struct intel_dp_mst_encoder* enc_to_mst (TYPE_2__*) ;
 int intel_audio_codec_enable (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 scalar_t__ intel_de_wait_for_set (struct drm_i915_private*,int ,int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_mst_enable_dp(struct intel_encoder *encoder,
    const struct intel_crtc_state *pipe_config,
    const struct drm_connector_state *conn_state)
{
 struct intel_dp_mst_encoder *intel_mst = enc_to_mst(&encoder->base);
 struct intel_digital_port *intel_dig_port = intel_mst->primary;
 struct intel_dp *intel_dp = &intel_dig_port->dp;
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 enum port port = intel_dig_port->base.port;

 DRM_DEBUG_KMS("active links %d\n", intel_dp->active_mst_links);

 if (intel_de_wait_for_set(dev_priv, DP_TP_STATUS(port),
      DP_TP_STATUS_ACT_SENT, 1))
  DRM_ERROR("Timed out waiting for ACT sent\n");

 drm_dp_check_act_status(&intel_dp->mst_mgr);

 drm_dp_update_payload_part2(&intel_dp->mst_mgr);
 if (pipe_config->has_audio)
  intel_audio_codec_enable(encoder, pipe_config, conn_state);
}
