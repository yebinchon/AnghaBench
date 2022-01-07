
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ notifier_call; } ;
struct tilcdc_drm_private {scalar_t__ wq; scalar_t__ mmio; scalar_t__ clk; scalar_t__ is_registered; scalar_t__ crtc; TYPE_1__ freq_transition; } ;
struct drm_device {int dev; struct tilcdc_drm_private* dev_private; } ;


 int CPUFREQ_TRANSITION_NOTIFIER ;
 int clk_put (scalar_t__) ;
 int cpufreq_unregister_notifier (TYPE_1__*,int ) ;
 int destroy_workqueue (scalar_t__) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int flush_workqueue (scalar_t__) ;
 int iounmap (scalar_t__) ;
 int pm_runtime_disable (int ) ;
 int tilcdc_crtc_shutdown (scalar_t__) ;

__attribute__((used)) static void tilcdc_fini(struct drm_device *dev)
{
 struct tilcdc_drm_private *priv = dev->dev_private;







 if (priv->crtc)
  tilcdc_crtc_shutdown(priv->crtc);

 if (priv->is_registered)
  drm_dev_unregister(dev);

 drm_kms_helper_poll_fini(dev);
 drm_irq_uninstall(dev);
 drm_mode_config_cleanup(dev);

 if (priv->clk)
  clk_put(priv->clk);

 if (priv->mmio)
  iounmap(priv->mmio);

 if (priv->wq) {
  flush_workqueue(priv->wq);
  destroy_workqueue(priv->wq);
 }

 dev->dev_private = ((void*)0);

 pm_runtime_disable(dev->dev);

 drm_dev_put(dev);
}
