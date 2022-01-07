
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dev_private; } ;
struct device {int dummy; } ;


 struct drm_device* dev_get_drvdata (struct device*) ;
 int tilcdc_fini (struct drm_device*) ;

__attribute__((used)) static void tilcdc_unbind(struct device *dev)
{
 struct drm_device *ddev = dev_get_drvdata(dev);


 if (!ddev->dev_private)
  return;

 tilcdc_fini(dev_get_drvdata(dev));
}
