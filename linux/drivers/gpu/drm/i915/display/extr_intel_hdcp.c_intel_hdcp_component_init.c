
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct drm_i915_private {int hdcp_comp_added; int hdcp_comp_mutex; TYPE_1__ drm; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int I915_COMPONENT_HDCP ;
 int WARN_ON (int) ;
 int component_add_typed (int ,int *,int ) ;
 int i915_hdcp_component_ops ;
 int is_hdcp2_supported (struct drm_i915_private*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_hdcp_component_init(struct drm_i915_private *dev_priv)
{
 int ret;

 if (!is_hdcp2_supported(dev_priv))
  return;

 mutex_lock(&dev_priv->hdcp_comp_mutex);
 WARN_ON(dev_priv->hdcp_comp_added);

 dev_priv->hdcp_comp_added = 1;
 mutex_unlock(&dev_priv->hdcp_comp_mutex);
 ret = component_add_typed(dev_priv->drm.dev, &i915_hdcp_component_ops,
      I915_COMPONENT_HDCP);
 if (ret < 0) {
  DRM_DEBUG_KMS("Failed at component add(%d)\n", ret);
  mutex_lock(&dev_priv->hdcp_comp_mutex);
  dev_priv->hdcp_comp_added = 0;
  mutex_unlock(&dev_priv->hdcp_comp_mutex);
  return;
 }
}
