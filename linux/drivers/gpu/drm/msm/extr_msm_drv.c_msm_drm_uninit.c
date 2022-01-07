
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct msm_mdss {TYPE_4__* funcs; } ;
struct msm_kms {TYPE_2__* funcs; } ;
struct TYPE_7__ {scalar_t__ paddr; int size; int mm; } ;
struct msm_drm_private {int num_crtcs; int wq; TYPE_3__ vram; scalar_t__ fbdev; TYPE_1__* event_thread; struct msm_mdss* mdss; struct msm_kms* kms; } ;
struct drm_device {struct msm_drm_private* dev_private; scalar_t__ registered; } ;
struct device {int dummy; } ;
struct TYPE_8__ {int (* destroy ) (struct drm_device*) ;} ;
struct TYPE_6__ {int (* destroy ) (struct msm_kms*) ;} ;
struct TYPE_5__ {int * thread; int worker; } ;


 unsigned long DMA_ATTR_NO_KERNEL_MAPPING ;
 int component_unbind_all (struct device*,struct drm_device*) ;
 int destroy_workqueue (int ) ;
 int dma_free_attrs (struct device*,int ,int *,scalar_t__,unsigned long) ;
 int drm_atomic_helper_shutdown (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_mm_takedown (int *) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 scalar_t__ fbdev ;
 int flush_workqueue (int ) ;
 int kfree (struct msm_drm_private*) ;
 int kthread_destroy_worker (int *) ;
 int msm_fbdev_free (struct drm_device*) ;
 int msm_gem_shrinker_cleanup (struct drm_device*) ;
 int msm_perf_debugfs_cleanup (struct msm_drm_private*) ;
 int msm_rd_debugfs_cleanup (struct msm_drm_private*) ;
 struct drm_device* platform_get_drvdata (struct platform_device*) ;
 int pm_runtime_get_sync (struct device*) ;
 int pm_runtime_put_sync (struct device*) ;
 int stub1 (struct msm_kms*) ;
 int stub2 (struct drm_device*) ;
 struct platform_device* to_platform_device (struct device*) ;

__attribute__((used)) static int msm_drm_uninit(struct device *dev)
{
 struct platform_device *pdev = to_platform_device(dev);
 struct drm_device *ddev = platform_get_drvdata(pdev);
 struct msm_drm_private *priv = ddev->dev_private;
 struct msm_kms *kms = priv->kms;
 struct msm_mdss *mdss = priv->mdss;
 int i;
 if (ddev->registered) {
  drm_dev_unregister(ddev);
  drm_atomic_helper_shutdown(ddev);
 }






 flush_workqueue(priv->wq);


 for (i = 0; i < priv->num_crtcs; i++) {
  if (priv->event_thread[i].thread) {
   kthread_destroy_worker(&priv->event_thread[i].worker);
   priv->event_thread[i].thread = ((void*)0);
  }
 }

 msm_gem_shrinker_cleanup(ddev);

 drm_kms_helper_poll_fini(ddev);

 msm_perf_debugfs_cleanup(priv);
 msm_rd_debugfs_cleanup(priv);






 drm_mode_config_cleanup(ddev);

 pm_runtime_get_sync(dev);
 drm_irq_uninstall(ddev);
 pm_runtime_put_sync(dev);

 if (kms && kms->funcs)
  kms->funcs->destroy(kms);

 if (priv->vram.paddr) {
  unsigned long attrs = DMA_ATTR_NO_KERNEL_MAPPING;
  drm_mm_takedown(&priv->vram.mm);
  dma_free_attrs(dev, priv->vram.size, ((void*)0),
          priv->vram.paddr, attrs);
 }

 component_unbind_all(dev, ddev);

 if (mdss && mdss->funcs)
  mdss->funcs->destroy(ddev);

 ddev->dev_private = ((void*)0);
 drm_dev_put(ddev);

 destroy_workqueue(priv->wq);
 kfree(priv);

 return 0;
}
