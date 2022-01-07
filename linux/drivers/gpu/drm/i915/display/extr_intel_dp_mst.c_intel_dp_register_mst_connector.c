
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {TYPE_1__* fbdev; } ;
struct drm_connector {int dev; } ;
struct TYPE_2__ {int helper; } ;


 int drm_connector_register (struct drm_connector*) ;
 int drm_fb_helper_add_one_connector (int *,struct drm_connector*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_dp_register_mst_connector(struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);

 if (dev_priv->fbdev)
  drm_fb_helper_add_one_connector(&dev_priv->fbdev->helper,
      connector);

 drm_connector_register(connector);
}
