
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rockchip_drm_private {int psr_list_lock; int psr_list; } ;
struct TYPE_2__ {int num_crtc; } ;
struct drm_device {int irq_enabled; struct rockchip_drm_private* dev_private; TYPE_1__ mode_config; int dev; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int component_bind_all (struct device*,struct drm_device*) ;
 int component_unbind_all (struct device*,struct drm_device*) ;
 int dev_set_drvdata (struct device*,struct drm_device*) ;
 struct rockchip_drm_private* devm_kzalloc (int ,int,int ) ;
 struct drm_device* drm_dev_alloc (int *,struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_kms_helper_poll_fini (struct drm_device*) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int drm_mode_config_cleanup (struct drm_device*) ;
 int drm_mode_config_init (struct drm_device*) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int ) ;
 int mutex_init (int *) ;
 int rockchip_drm_driver ;
 int rockchip_drm_fbdev_fini (struct drm_device*) ;
 int rockchip_drm_fbdev_init (struct drm_device*) ;
 int rockchip_drm_init_iommu (struct drm_device*) ;
 int rockchip_drm_mode_config_init (struct drm_device*) ;
 int rockchip_iommu_cleanup (struct drm_device*) ;

__attribute__((used)) static int rockchip_drm_bind(struct device *dev)
{
 struct drm_device *drm_dev;
 struct rockchip_drm_private *private;
 int ret;

 drm_dev = drm_dev_alloc(&rockchip_drm_driver, dev);
 if (IS_ERR(drm_dev))
  return PTR_ERR(drm_dev);

 dev_set_drvdata(dev, drm_dev);

 private = devm_kzalloc(drm_dev->dev, sizeof(*private), GFP_KERNEL);
 if (!private) {
  ret = -ENOMEM;
  goto err_free;
 }

 drm_dev->dev_private = private;

 INIT_LIST_HEAD(&private->psr_list);
 mutex_init(&private->psr_list_lock);

 ret = rockchip_drm_init_iommu(drm_dev);
 if (ret)
  goto err_free;

 drm_mode_config_init(drm_dev);

 rockchip_drm_mode_config_init(drm_dev);


 ret = component_bind_all(dev, drm_dev);
 if (ret)
  goto err_mode_config_cleanup;

 ret = drm_vblank_init(drm_dev, drm_dev->mode_config.num_crtc);
 if (ret)
  goto err_unbind_all;

 drm_mode_config_reset(drm_dev);





 drm_dev->irq_enabled = 1;

 ret = rockchip_drm_fbdev_init(drm_dev);
 if (ret)
  goto err_unbind_all;


 drm_kms_helper_poll_init(drm_dev);

 ret = drm_dev_register(drm_dev, 0);
 if (ret)
  goto err_kms_helper_poll_fini;

 return 0;
err_kms_helper_poll_fini:
 drm_kms_helper_poll_fini(drm_dev);
 rockchip_drm_fbdev_fini(drm_dev);
err_unbind_all:
 component_unbind_all(dev, drm_dev);
err_mode_config_cleanup:
 drm_mode_config_cleanup(drm_dev);
 rockchip_iommu_cleanup(drm_dev);
err_free:
 drm_dev->dev_private = ((void*)0);
 dev_set_drvdata(dev, ((void*)0));
 drm_dev_put(drm_dev);
 return ret;
}
