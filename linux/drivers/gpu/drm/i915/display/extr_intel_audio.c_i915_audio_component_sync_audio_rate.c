
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int crtc; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crtc {int config; } ;
struct i915_audio_component {int* aud_sample_rate; } ;
struct drm_i915_private {int av_mutex; struct i915_audio_component* audio_component; } ;
struct device {int dummy; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int ENODEV ;
 int HAS_DDI (struct drm_i915_private*) ;
 struct intel_encoder* get_saved_enc (struct drm_i915_private*,int,int) ;
 int hsw_audio_config_update (struct intel_encoder*,int ) ;
 unsigned long i915_audio_component_get_power (struct device*) ;
 int i915_audio_component_put_power (struct device*,unsigned long) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int port_name (int) ;
 struct intel_crtc* to_intel_crtc (int ) ;

__attribute__((used)) static int i915_audio_component_sync_audio_rate(struct device *kdev, int port,
      int pipe, int rate)
{
 struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 struct i915_audio_component *acomp = dev_priv->audio_component;
 struct intel_encoder *encoder;
 struct intel_crtc *crtc;
 unsigned long cookie;
 int err = 0;

 if (!HAS_DDI(dev_priv))
  return 0;

 cookie = i915_audio_component_get_power(kdev);
 mutex_lock(&dev_priv->av_mutex);


 encoder = get_saved_enc(dev_priv, port, pipe);
 if (!encoder || !encoder->base.crtc) {
  DRM_DEBUG_KMS("Not valid for port %c\n", port_name(port));
  err = -ENODEV;
  goto unlock;
 }

 crtc = to_intel_crtc(encoder->base.crtc);


 acomp->aud_sample_rate[port] = rate;

 hsw_audio_config_update(encoder, crtc->config);

 unlock:
 mutex_unlock(&dev_priv->av_mutex);
 i915_audio_component_put_power(kdev, cookie);
 return err;
}
