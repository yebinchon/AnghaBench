
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int dev; } ;
struct intel_encoder {int port; struct drm_connector* audio_connector; TYPE_1__ base; } ;
struct drm_display_mode {int dummy; } ;
struct TYPE_10__ {struct drm_display_mode adjusted_mode; int crtc; } ;
struct intel_crtc_state {int port_clock; TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct TYPE_16__ {TYPE_7__* audio_ops; } ;
struct i915_audio_component {TYPE_8__ base; } ;
struct TYPE_14__ {int (* audio_codec_enable ) (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct drm_i915_private {int av_mutex; struct intel_encoder** av_enc_map; TYPE_6__ display; struct i915_audio_component* audio_component; } ;
struct drm_connector_state {struct drm_connector* connector; } ;
struct TYPE_11__ {int id; } ;
struct drm_connector {int* eld; TYPE_5__* encoder; int name; TYPE_3__ base; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_15__ {int audio_ptr; int (* pin_eld_notify ) (int ,int,int) ;} ;
struct TYPE_12__ {int id; } ;
struct TYPE_13__ {int name; TYPE_4__ base; } ;


 int DRM_DEBUG_DRIVER (char*,int ,int ,int ,int ) ;
 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int INTEL_OUTPUT_DP_MST ;
 int drm_av_sync_delay (struct drm_connector*,struct drm_display_mode const*) ;
 int intel_crtc_has_dp_encoder (struct intel_crtc_state const*) ;
 int intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_lpe_audio_notify (struct drm_i915_private*,int,int,int*,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int stub2 (int ,int,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_audio_codec_enable(struct intel_encoder *encoder,
         const struct intel_crtc_state *crtc_state,
         const struct drm_connector_state *conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct i915_audio_component *acomp = dev_priv->audio_component;
 struct intel_crtc *crtc = to_intel_crtc(crtc_state->base.crtc);
 struct drm_connector *connector = conn_state->connector;
 const struct drm_display_mode *adjusted_mode =
  &crtc_state->base.adjusted_mode;
 enum port port = encoder->port;
 enum pipe pipe = crtc->pipe;


 if (!connector->eld[0])
  DRM_DEBUG_KMS("Bogus ELD on [CONNECTOR:%d:%s]\n",
         connector->base.id, connector->name);

 DRM_DEBUG_DRIVER("ELD on [CONNECTOR:%d:%s], [ENCODER:%d:%s]\n",
    connector->base.id,
    connector->name,
    connector->encoder->base.id,
    connector->encoder->name);

 connector->eld[6] = drm_av_sync_delay(connector, adjusted_mode) / 2;

 if (dev_priv->display.audio_codec_enable)
  dev_priv->display.audio_codec_enable(encoder,
           crtc_state,
           conn_state);

 mutex_lock(&dev_priv->av_mutex);
 encoder->audio_connector = connector;


 dev_priv->av_enc_map[pipe] = encoder;
 mutex_unlock(&dev_priv->av_mutex);

 if (acomp && acomp->base.audio_ops &&
     acomp->base.audio_ops->pin_eld_notify) {

  if (!intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP_MST))
   pipe = -1;
  acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
       (int) port, (int) pipe);
 }

 intel_lpe_audio_notify(dev_priv, pipe, port, connector->eld,
          crtc_state->port_clock,
          intel_crtc_has_dp_encoder(crtc_state));
}
