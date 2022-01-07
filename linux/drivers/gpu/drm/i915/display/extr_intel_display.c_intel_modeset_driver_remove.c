
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int free_list; int free_work; } ;
struct drm_i915_private {int modeset_wq; TYPE_1__ atomic_helper; } ;
struct drm_device {int dummy; } ;


 int WARN_ON (int) ;
 int destroy_workqueue (int ) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int flush_scheduled_work () ;
 int flush_work (int *) ;
 int flush_workqueue (int ) ;
 int intel_fbc_cleanup_cfb (struct drm_i915_private*) ;
 int intel_fbc_global_disable (struct drm_i915_private*) ;
 int intel_fbdev_fini (struct drm_i915_private*) ;
 int intel_gmbus_teardown (struct drm_i915_private*) ;
 int intel_hdcp_component_fini (struct drm_i915_private*) ;
 int intel_hpd_poll_fini (struct drm_device*) ;
 int intel_irq_uninstall (struct drm_i915_private*) ;
 int intel_overlay_cleanup (struct drm_i915_private*) ;
 int intel_unregister_dsm_handler () ;
 int llist_empty (int *) ;
 struct drm_i915_private* to_i915 (struct drm_device*) ;

void intel_modeset_driver_remove(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = to_i915(dev);

 flush_workqueue(dev_priv->modeset_wq);

 flush_work(&dev_priv->atomic_helper.free_work);
 WARN_ON(!llist_empty(&dev_priv->atomic_helper.free_list));






 intel_irq_uninstall(dev_priv);





 intel_hpd_poll_fini(dev);


 intel_fbdev_fini(dev_priv);

 intel_unregister_dsm_handler();

 intel_fbc_global_disable(dev_priv);


 flush_scheduled_work();

 intel_hdcp_component_fini(dev_priv);

 drm_mode_config_cleanup(dev);

 intel_overlay_cleanup(dev_priv);

 intel_gmbus_teardown(dev_priv);

 destroy_workqueue(dev_priv->modeset_wq);

 intel_fbc_cleanup_cfb(dev_priv);
}
