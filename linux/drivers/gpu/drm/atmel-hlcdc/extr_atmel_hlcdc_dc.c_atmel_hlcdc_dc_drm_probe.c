
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct drm_device {int dummy; } ;


 scalar_t__ IS_ERR (struct drm_device*) ;
 int PTR_ERR (struct drm_device*) ;
 int atmel_hlcdc_dc_driver ;
 int atmel_hlcdc_dc_load (struct drm_device*) ;
 int atmel_hlcdc_dc_unload (struct drm_device*) ;
 struct drm_device* drm_dev_alloc (int *,int *) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_register (struct drm_device*,int ) ;
 int drm_fbdev_generic_setup (struct drm_device*,int) ;

__attribute__((used)) static int atmel_hlcdc_dc_drm_probe(struct platform_device *pdev)
{
 struct drm_device *ddev;
 int ret;

 ddev = drm_dev_alloc(&atmel_hlcdc_dc_driver, &pdev->dev);
 if (IS_ERR(ddev))
  return PTR_ERR(ddev);

 ret = atmel_hlcdc_dc_load(ddev);
 if (ret)
  goto err_put;

 ret = drm_dev_register(ddev, 0);
 if (ret)
  goto err_unload;

 drm_fbdev_generic_setup(ddev, 24);

 return 0;

err_unload:
 atmel_hlcdc_dc_unload(ddev);

err_put:
 drm_dev_put(ddev);

 return ret;
}
