
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


struct TYPE_14__ {int dev; } ;
struct intel_encoder {TYPE_7__ base; } ;
struct intel_dp {struct intel_connector* attached_connector; } ;
struct TYPE_12__ {int active; } ;
struct intel_crtc_state {scalar_t__ has_pch_encoder; TYPE_5__ base; } ;
struct TYPE_11__ {int state; int mutex; } ;
struct intel_crtc {int pipe; TYPE_4__ base; } ;
struct TYPE_10__ {scalar_t__ status; struct drm_connector_state* state; } ;
struct intel_connector {TYPE_3__ base; } ;
struct drm_modeset_acquire_ctx {int dummy; } ;
struct TYPE_8__ {int connection_mutex; } ;
struct TYPE_9__ {TYPE_1__ mode_config; } ;
struct drm_i915_private {TYPE_2__ drm; } ;
struct drm_connector_state {TYPE_6__* commit; int crtc; } ;
struct TYPE_13__ {int hw_done; } ;


 int WARN_ON (int) ;
 scalar_t__ connector_status_connected ;
 int drm_modeset_lock (int *,struct drm_modeset_acquire_ctx*) ;
 struct intel_dp* enc_to_intel_dp (TYPE_7__*) ;
 int intel_crtc_has_dp_encoder (struct intel_crtc_state*) ;
 int intel_crtc_pch_transcoder (struct intel_crtc*) ;
 int intel_dp_needs_link_retrain (struct intel_dp*) ;
 int intel_dp_start_link_train (struct intel_dp*) ;
 int intel_dp_stop_link_train (struct intel_dp*) ;
 int intel_set_cpu_fifo_underrun_reporting (struct drm_i915_private*,int ,int) ;
 int intel_set_pch_fifo_underrun_reporting (struct drm_i915_private*,int ,int) ;
 int intel_wait_for_vblank (struct drm_i915_private*,int ) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;
 struct intel_crtc_state* to_intel_crtc_state (int ) ;
 int try_wait_for_completion (int *) ;

int intel_dp_retrain_link(struct intel_encoder *encoder,
     struct drm_modeset_acquire_ctx *ctx)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct intel_dp *intel_dp = enc_to_intel_dp(&encoder->base);
 struct intel_connector *connector = intel_dp->attached_connector;
 struct drm_connector_state *conn_state;
 struct intel_crtc_state *crtc_state;
 struct intel_crtc *crtc;
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

 WARN_ON(!intel_crtc_has_dp_encoder(crtc_state));

 if (!crtc_state->base.active)
  return 0;

 if (conn_state->commit &&
     !try_wait_for_completion(&conn_state->commit->hw_done))
  return 0;

 if (!intel_dp_needs_link_retrain(intel_dp))
  return 0;


 intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, 0);
 if (crtc_state->has_pch_encoder)
  intel_set_pch_fifo_underrun_reporting(dev_priv,
            intel_crtc_pch_transcoder(crtc), 0);

 intel_dp_start_link_train(intel_dp);
 intel_dp_stop_link_train(intel_dp);


 intel_wait_for_vblank(dev_priv, crtc->pipe);

 intel_set_cpu_fifo_underrun_reporting(dev_priv, crtc->pipe, 1);
 if (crtc_state->has_pch_encoder)
  intel_set_pch_fifo_underrun_reporting(dev_priv,
            intel_crtc_pch_transcoder(crtc), 1);

 return 0;
}
