
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct drm_i915_private {int hdcp_comp_added; TYPE_1__ drm; int hdcp_comp_mutex; } ;


 int component_del (int ,int *) ;
 int i915_hdcp_component_ops ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_hdcp_component_fini(struct drm_i915_private *dev_priv)
{
 mutex_lock(&dev_priv->hdcp_comp_mutex);
 if (!dev_priv->hdcp_comp_added) {
  mutex_unlock(&dev_priv->hdcp_comp_mutex);
  return;
 }

 dev_priv->hdcp_comp_added = 0;
 mutex_unlock(&dev_priv->hdcp_comp_mutex);

 component_del(dev_priv->drm.dev, &i915_hdcp_component_ops);
}
