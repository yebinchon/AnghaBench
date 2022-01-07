
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct link_config_limits {int max_bpp; int min_bpp; int max_lane_count; int min_lane_count; int max_clock; int min_clock; } ;
struct TYPE_6__ {int dev; } ;
struct intel_encoder {TYPE_3__ base; } ;
struct intel_dp_mst_encoder {TYPE_1__* primary; } ;
struct intel_dp {int mst_mgr; } ;
struct intel_digital_connector_state {scalar_t__ force_audio; } ;
struct drm_display_mode {int flags; } ;
struct TYPE_5__ {struct drm_display_mode adjusted_mode; } ;
struct intel_crtc_state {int has_pch_encoder; int has_audio; int lane_count; int lane_lat_optim_mask; int limited_color_range; int pipe_bpp; int output_format; TYPE_2__ base; } ;
struct intel_connector {void* port; } ;
struct drm_i915_private {int dummy; } ;
struct drm_connector_state {int connector; } ;
struct TYPE_4__ {struct intel_dp dp; } ;


 int DRM_MODE_FLAG_DBLSCAN ;
 int EINVAL ;
 scalar_t__ HDMI_AUDIO_AUTO ;
 scalar_t__ HDMI_AUDIO_ON ;
 int INTEL_OUTPUT_FORMAT_RGB ;
 scalar_t__ IS_GEN9_LP (struct drm_i915_private*) ;
 int bxt_ddi_phy_calc_lane_lat_optim_mask (int ) ;
 int drm_dp_mst_port_has_audio (int *,void*) ;
 struct intel_dp_mst_encoder* enc_to_mst (TYPE_3__*) ;
 int intel_ddi_compute_min_voltage_level (struct drm_i915_private*,struct intel_crtc_state*) ;
 int intel_dp_adjust_compliance_config (struct intel_dp*,struct intel_crtc_state*,struct link_config_limits*) ;
 int intel_dp_limited_color_range (struct intel_crtc_state*,struct drm_connector_state*) ;
 int intel_dp_max_lane_count (struct intel_dp*) ;
 int intel_dp_max_link_rate (struct intel_dp*) ;
 int intel_dp_min_bpp (struct intel_crtc_state*) ;
 int intel_dp_mst_compute_link_config (struct intel_encoder*,struct intel_crtc_state*,struct drm_connector_state*,struct link_config_limits*) ;
 int min (int ,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_connector* to_intel_connector (int ) ;
 struct intel_digital_connector_state* to_intel_digital_connector_state (struct drm_connector_state*) ;

__attribute__((used)) static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
           struct intel_crtc_state *pipe_config,
           struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dp_mst_encoder *intel_mst = enc_to_mst(&encoder->base);
 struct intel_dp *intel_dp = &intel_mst->primary->dp;
 struct intel_connector *connector =
  to_intel_connector(conn_state->connector);
 struct intel_digital_connector_state *intel_conn_state =
  to_intel_digital_connector_state(conn_state);
 const struct drm_display_mode *adjusted_mode =
  &pipe_config->base.adjusted_mode;
 void *port = connector->port;
 struct link_config_limits limits;
 int ret;

 if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
  return -EINVAL;

 pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
 pipe_config->has_pch_encoder = 0;

 if (intel_conn_state->force_audio == HDMI_AUDIO_AUTO)
  pipe_config->has_audio =
   drm_dp_mst_port_has_audio(&intel_dp->mst_mgr, port);
 else
  pipe_config->has_audio =
   intel_conn_state->force_audio == HDMI_AUDIO_ON;





 limits.min_clock =
 limits.max_clock = intel_dp_max_link_rate(intel_dp);

 limits.min_lane_count =
 limits.max_lane_count = intel_dp_max_lane_count(intel_dp);

 limits.min_bpp = intel_dp_min_bpp(pipe_config);
 limits.max_bpp = min(pipe_config->pipe_bpp, 24);

 intel_dp_adjust_compliance_config(intel_dp, pipe_config, &limits);

 ret = intel_dp_mst_compute_link_config(encoder, pipe_config,
            conn_state, &limits);
 if (ret)
  return ret;

 pipe_config->limited_color_range =
  intel_dp_limited_color_range(pipe_config, conn_state);

 if (IS_GEN9_LP(dev_priv))
  pipe_config->lane_lat_optim_mask =
   bxt_ddi_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);

 intel_ddi_compute_min_voltage_level(dev_priv, pipe_config);

 return 0;
}
