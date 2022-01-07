
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev; } ;
struct device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int component_bind_all (int ,struct drm_device*) ;
 struct drm_device* drm_dev_alloc (int *,struct device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int) ;
 int drm_mode_config_reset (struct drm_device*) ;
 int sti_cleanup (struct drm_device*) ;
 int sti_driver ;
 int sti_init (struct drm_device*) ;

__attribute__((used)) static int sti_bind(struct device *dev)
{
 struct drm_device *ddev;
 int ret;

 ddev = drm_dev_alloc(&sti_driver, dev);
 if (IS_ERR(ddev))
  return PTR_ERR(ddev);

 ret = sti_init(ddev);
 if (ret)
  goto err_drm_dev_put;

 ret = component_bind_all(ddev->dev, ddev);
 if (ret)
  goto err_cleanup;

 ret = drm_dev_register(ddev, 0);
 if (ret)
  goto err_cleanup;

 drm_mode_config_reset(ddev);

 drm_fbdev_generic_setup(ddev, 32);

 return 0;

err_cleanup:
 sti_cleanup(ddev);
err_drm_dev_put:
 drm_dev_put(ddev);
 return ret;
}
