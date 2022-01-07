
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u8 ;
struct intel_hdmi {int ddc_bus; struct intel_connector* attached_connector; } ;
struct TYPE_14__ {int dev; } ;
struct intel_encoder {TYPE_7__ base; } ;
struct TYPE_11__ {int active; } ;
struct intel_crtc_state {int hdmi_high_tmds_clock_ratio; int hdmi_scrambling; TYPE_4__ base; } ;
struct TYPE_13__ {int state; int mutex; } ;
struct intel_crtc {TYPE_6__ base; } ;
struct TYPE_10__ {scalar_t__ status; struct drm_connector_state* state; } ;
struct intel_connector {TYPE_3__ base; } ;
struct i2c_adapter {int dummy; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_8__ {int connection_mutex; } ;
struct TYPE_9__ {TYPE_1__ mode_config; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct drm_connector_state {TYPE_5__* commit; int crtc; } ;
struct TYPE_12__ {int hw_done; } ;


 int DRM_ERROR (char*,int) ;
 int INTEL_OUTPUT_HDMI ;
 int SCDC_SCRAMBLING_ENABLE ;
 int SCDC_TMDS_BIT_CLOCK_RATIO_BY_40 ;
 int SCDC_TMDS_CONFIG ;
 int WARN_ON (int) ;
 scalar_t__ connector_status_connected ;
 int drm_modeset_lock (int *,struct drm_modeset_acquire_ctx*) ;
 int drm_scdc_readb (struct i2c_adapter*,int ,int*) ;
 struct intel_hdmi* enc_to_intel_hdmi (TYPE_7__*) ;
 int intel_crtc_has_type (struct intel_crtc_state*,int ) ;
 struct i2c_adapter* intel_gmbus_get_adapter (struct drm_i915_private*,int ) ;
 int modeset_pipe (TYPE_6__*,struct drm_modeset_acquire_ctx*) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 struct intel_crtc_state* to_intel_crtc_state (int ) ;
 int try_wait_for_completion (int *) ;

__attribute__((used)) static int intel_hdmi_reset_link(struct intel_encoder *encoder,
     struct drm_modeset_acquire_ctx *ctx)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_hdmi *hdmi = enc_to_intel_hdmi(&encoder->base);
 struct intel_connector *connector = hdmi->attached_connector;
 struct i2c_adapter *adapter =
  intel_gmbus_get_adapter(dev_priv, hdmi->ddc_bus);
 struct drm_connector_state *conn_state;
 struct intel_crtc_state *crtc_state;
 struct intel_crtc *crtc;
 u8 config;
 int ret;

 if (!connector || connector->base.status != connector_status_connected)
  return 0;

 ret = drm_modeset_lock(&dev_priv->drm.mode_config.connection_mutex,
          ctx);
 if (ret)
  return ret;

 conn_state = connector->base.state;

 crtc = to_intel_crtc(conn_state->crtc);
 if (!crtc)
  return 0;

 ret = drm_modeset_lock(&crtc->base.mutex, ctx);
 if (ret)
  return ret;

 crtc_state = to_intel_crtc_state(crtc->base.state);

 WARN_ON(!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI));

 if (!crtc_state->base.active)
  return 0;

 if (!crtc_state->hdmi_high_tmds_clock_ratio &&
     !crtc_state->hdmi_scrambling)
  return 0;

 if (conn_state->commit &&
     !try_wait_for_completion(&conn_state->commit->hw_done))
  return 0;

 ret = drm_scdc_readb(adapter, SCDC_TMDS_CONFIG, &config);
 if (ret < 0) {
  DRM_ERROR("Failed to read TMDS config: %d\n", ret);
  return 0;
 }

 if (!!(config & SCDC_TMDS_BIT_CLOCK_RATIO_BY_40) ==
     crtc_state->hdmi_high_tmds_clock_ratio &&
     !!(config & SCDC_SCRAMBLING_ENABLE) ==
     crtc_state->hdmi_scrambling)
  return 0;
 return modeset_pipe(&crtc->base, ctx);
}
