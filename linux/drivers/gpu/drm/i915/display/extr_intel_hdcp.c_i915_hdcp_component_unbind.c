
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int hdcp_comp_mutex; int * hdcp_master; } ;
struct device {int dummy; } ;


 int DRM_DEBUG (char*) ;
 struct drm_i915_private* kdev_to_i915 (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void i915_hdcp_component_unbind(struct device *i915_kdev,
           struct device *mei_kdev, void *data)
{
 struct drm_i915_private *dev_priv = kdev_to_i915(i915_kdev);

 DRM_DEBUG("I915 HDCP comp unbind\n");
 mutex_lock(&dev_priv->hdcp_comp_mutex);
 dev_priv->hdcp_master = ((void*)0);
 mutex_unlock(&dev_priv->hdcp_comp_mutex);
}
