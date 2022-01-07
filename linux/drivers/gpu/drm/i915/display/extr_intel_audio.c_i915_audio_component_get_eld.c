
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct intel_encoder {TYPE_1__* audio_connector; } ;
struct drm_i915_private {int av_mutex; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int * eld; } ;


 int DRM_DEBUG_KMS (char*,int ) ;
 int EINVAL ;
 int drm_eld_size (int const*) ;
 struct intel_encoder* get_saved_enc (struct drm_i915_private*,int,int) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;
 int memcpy (unsigned char*,int const*,int ) ;
 int min (int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int port_name (int) ;

__attribute__((used)) static int i915_audio_component_get_eld(struct device *kdev, int port,
     int pipe, bool *enabled,
     unsigned char *buf, int max_bytes)
{
 struct drm_i915_private *dev_priv = kdev_to_i915(kdev);
 struct intel_encoder *intel_encoder;
 const u8 *eld;
 int ret = -EINVAL;

 mutex_lock(&dev_priv->av_mutex);

 intel_encoder = get_saved_enc(dev_priv, port, pipe);
 if (!intel_encoder) {
  DRM_DEBUG_KMS("Not valid for port %c\n", port_name(port));
  mutex_unlock(&dev_priv->av_mutex);
  return ret;
 }

 ret = 0;
 *enabled = intel_encoder->audio_connector != ((void*)0);
 if (*enabled) {
  eld = intel_encoder->audio_connector->eld;
  ret = drm_eld_size(eld);
  memcpy(buf, eld, min(max_bytes, ret));
 }

 mutex_unlock(&dev_priv->av_mutex);
 return ret;
}
