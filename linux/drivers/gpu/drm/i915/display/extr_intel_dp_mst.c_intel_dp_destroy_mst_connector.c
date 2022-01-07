
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_private {TYPE_2__* fbdev; } ;
struct drm_dp_mst_topology_mgr {int dummy; } ;
struct TYPE_3__ {int id; } ;
struct drm_connector {int name; TYPE_1__ base; int dev; } ;
struct TYPE_4__ {int helper; } ;


 int DRM_DEBUG_KMS (char*,int ,int ) ;
 int drm_connector_put (struct drm_connector*) ;
 int drm_connector_unregister (struct drm_connector*) ;
 int drm_fb_helper_remove_one_connector (int *,struct drm_connector*) ;
 struct drm_i915_private* to_i915 (int ) ;

__attribute__((used)) static void intel_dp_destroy_mst_connector(struct drm_dp_mst_topology_mgr *mgr,
        struct drm_connector *connector)
{
 struct drm_i915_private *dev_priv = to_i915(connector->dev);

 DRM_DEBUG_KMS("[CONNECTOR:%d:%s]\n", connector->base.id, connector->name);
 drm_connector_unregister(connector);

 if (dev_priv->fbdev)
  drm_fb_helper_remove_one_connector(&dev_priv->fbdev->helper,
         connector);

 drm_connector_put(connector);
}
