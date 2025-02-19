
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct drm_device {int dummy; } ;


 int atmel_hlcdc_dc_unload (struct drm_device*) ;
 int drm_dev_put (struct drm_device*) ;
 int drm_dev_unregister (struct drm_device*) ;
 struct drm_device* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int atmel_hlcdc_dc_drm_remove(struct platform_device *pdev)
{
 struct drm_device *ddev = platform_get_drvdata(pdev);

 drm_dev_unregister(ddev);
 atmel_hlcdc_dc_unload(ddev);
 drm_dev_put(ddev);

 return 0;
}
