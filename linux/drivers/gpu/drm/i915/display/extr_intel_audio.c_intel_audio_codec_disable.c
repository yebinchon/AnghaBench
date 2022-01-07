
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
struct intel_encoder {int port; int * audio_connector; TYPE_1__ base; } ;
struct TYPE_7__ {int crtc; } ;
struct intel_crtc_state {TYPE_2__ base; } ;
struct intel_crtc {int pipe; } ;
struct TYPE_10__ {TYPE_4__* audio_ops; } ;
struct i915_audio_component {TYPE_5__ base; } ;
struct TYPE_8__ {int (* audio_codec_disable ) (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;} ;
struct drm_i915_private {int av_mutex; int ** av_enc_map; TYPE_3__ display; struct i915_audio_component* audio_component; } ;
struct drm_connector_state {int dummy; } ;
typedef enum port { ____Placeholder_port } port ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_9__ {int audio_ptr; int (* pin_eld_notify ) (int ,int,int) ;} ;


 int INTEL_OUTPUT_DP_MST ;
 int intel_crtc_has_type (struct intel_crtc_state const*,int ) ;
 int intel_lpe_audio_notify (struct drm_i915_private*,int,int,int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct intel_encoder*,struct intel_crtc_state const*,struct drm_connector_state const*) ;
 int stub2 (int ,int,int) ;
 struct drm_i915_private* to_i915 (int ) ;
 struct intel_crtc* to_intel_crtc (int ) ;

void intel_audio_codec_disable(struct intel_encoder *encoder,
          const struct intel_crtc_state *old_crtc_state,
          const struct drm_connector_state *old_conn_state)
{
 struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
 struct i915_audio_component *acomp = dev_priv->audio_component;
 struct intel_crtc *crtc = to_intel_crtc(old_crtc_state->base.crtc);
 enum port port = encoder->port;
 enum pipe pipe = crtc->pipe;

 if (dev_priv->display.audio_codec_disable)
  dev_priv->display.audio_codec_disable(encoder,
            old_crtc_state,
            old_conn_state);

 mutex_lock(&dev_priv->av_mutex);
 encoder->audio_connector = ((void*)0);
 dev_priv->av_enc_map[pipe] = ((void*)0);
 mutex_unlock(&dev_priv->av_mutex);

 if (acomp && acomp->base.audio_ops &&
     acomp->base.audio_ops->pin_eld_notify) {

  if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
   pipe = -1;
  acomp->base.audio_ops->pin_eld_notify(acomp->base.audio_ops->audio_ptr,
       (int) port, (int) pipe);
 }

 intel_lpe_audio_notify(dev_priv, pipe, port, ((void*)0), 0, 0);
}
