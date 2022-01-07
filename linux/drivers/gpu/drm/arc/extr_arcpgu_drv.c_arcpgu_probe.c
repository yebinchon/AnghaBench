
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int arcpgu_drm_driver ;
 int arcpgu_load (struct drm_device*) ;
 int arcpgu_unload (struct drm_device*) ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int) ;

__attribute__((used)) static int arcpgu_probe(struct platform_device *pdev)
{
 struct drm_device *drm;
 int ret;

 drm = drm_dev_alloc(&arcpgu_drm_driver, &pdev->dev);
 if (IS_ERR(drm))
  return PTR_ERR(drm);

 ret = arcpgu_load(drm);
 if (ret)
  goto err_unref;

 ret = drm_dev_register(drm, 0);
 if (ret)
  goto err_unload;

 drm_fbdev_generic_setup(drm, 16);

 return 0;

err_unload:
 arcpgu_unload(drm);

err_unref:
 drm_dev_put(drm);

 return ret;
}
