
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_device_attribute {scalar_t__ data; } ;
struct omap_drm_private {unsigned int omaprev; unsigned int num_pipes; int wq; TYPE_1__* pipes; struct device* dev; int dispc; TYPE_2__* dispc_ops; int max_bandwidth; int obj_list; int list_lock; int dss; struct drm_device* ddev; } ;
struct drm_device {struct omap_drm_private* dev_private; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int (* get_memory_bandwidth_limit ) (int ) ;} ;
struct TYPE_3__ {int crtc; } ;


 int DBG (char*,int ) ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int ) ;
 int dev_err (struct device*,char*,...) ;
 int dev_name (struct device*) ;
 int dispc_get_dispc (int ) ;
 TYPE_2__* dispc_get_ops (int ) ;
 int drm_crtc_vblank_off (int ) ;
 struct drm_device* drm_dev_alloc (int *,struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,unsigned int) ;
 int mutex_init (int *) ;
 int omap_crtc_pre_init (struct omap_drm_private*) ;
 int omap_crtc_pre_uninit (struct omap_drm_private*) ;
 int omap_disconnect_pipelines (struct drm_device*) ;
 int omap_drm_driver ;
 int omap_drm_irq_uninstall (struct drm_device*) ;
 int omap_fbdev_fini (struct drm_device*) ;
 int omap_fbdev_init (struct drm_device*) ;
 int omap_gem_deinit (struct drm_device*) ;
 int omap_gem_init (struct drm_device*) ;
 int omap_modeset_disable_external_hpd (struct drm_device*) ;
 int omap_modeset_enable_external_hpd (struct drm_device*) ;
 int omap_modeset_init (struct drm_device*) ;
 int omapdrm_soc_devices ;
 int omapdss_get_dss () ;
 struct soc_device_attribute* soc_device_match (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static int omapdrm_init(struct omap_drm_private *priv, struct device *dev)
{
 const struct soc_device_attribute *soc;
 struct drm_device *ddev;
 unsigned int i;
 int ret;

 DBG("%s", dev_name(dev));


 ddev = drm_dev_alloc(&omap_drm_driver, dev);
 if (IS_ERR(ddev))
  return PTR_ERR(ddev);

 priv->ddev = ddev;
 ddev->dev_private = priv;

 priv->dev = dev;
 priv->dss = omapdss_get_dss();
 priv->dispc = dispc_get_dispc(priv->dss);
 priv->dispc_ops = dispc_get_ops(priv->dss);

 omap_crtc_pre_init(priv);

 soc = soc_device_match(omapdrm_soc_devices);
 priv->omaprev = soc ? (unsigned int)soc->data : 0;
 priv->wq = alloc_ordered_workqueue("omapdrm", 0);

 mutex_init(&priv->list_lock);
 INIT_LIST_HEAD(&priv->obj_list);


 if (priv->dispc_ops->get_memory_bandwidth_limit)
  priv->max_bandwidth =
   priv->dispc_ops->get_memory_bandwidth_limit(priv->dispc);

 omap_gem_init(ddev);

 ret = omap_modeset_init(ddev);
 if (ret) {
  dev_err(priv->dev, "omap_modeset_init failed: ret=%d\n", ret);
  goto err_gem_deinit;
 }


 ret = drm_vblank_init(ddev, priv->num_pipes);
 if (ret) {
  dev_err(priv->dev, "could not init vblank\n");
  goto err_cleanup_modeset;
 }

 for (i = 0; i < priv->num_pipes; i++)
  drm_crtc_vblank_off(priv->pipes[i].crtc);

 omap_fbdev_init(ddev);

 drm_kms_helper_poll_init(ddev);
 omap_modeset_enable_external_hpd(ddev);





 ret = drm_dev_register(ddev, 0);
 if (ret)
  goto err_cleanup_helpers;

 return 0;

err_cleanup_helpers:
 omap_modeset_disable_external_hpd(ddev);
 drm_kms_helper_poll_fini(ddev);

 omap_fbdev_fini(ddev);
err_cleanup_modeset:
 drm_mode_config_cleanup(ddev);
 omap_drm_irq_uninstall(ddev);
err_gem_deinit:
 omap_gem_deinit(ddev);
 destroy_workqueue(priv->wq);
 omap_disconnect_pipelines(ddev);
 omap_crtc_pre_uninit(priv);
 drm_dev_put(ddev);
 return ret;
}
