
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct host1x_device {int dev; } ;
struct drm_driver {int dummy; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int dev_set_drvdata (int *,struct drm_device*) ;
 struct drm_device* drm_dev_alloc (struct drm_driver*,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fb_helper_remove_conflicting_framebuffers (int *,char*,int) ;
 struct drm_driver tegra_drm_driver ;

__attribute__((used)) static int host1x_drm_probe(struct host1x_device *dev)
{
 struct drm_driver *driver = &tegra_drm_driver;
 struct drm_device *drm;
 int err;

 drm = drm_dev_alloc(driver, &dev->dev);
 if (IS_ERR(drm))
  return PTR_ERR(drm);

 dev_set_drvdata(&dev->dev, drm);

 err = drm_fb_helper_remove_conflicting_framebuffers(((void*)0), "tegradrmfb", 0);
 if (err < 0)
  goto put;

 err = drm_dev_register(drm, 0);
 if (err < 0)
  goto put;

 return 0;

put:
 drm_dev_put(drm);
 return err;
}
