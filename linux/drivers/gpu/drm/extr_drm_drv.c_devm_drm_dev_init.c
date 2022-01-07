
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_driver {int release; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int EINVAL ;
 scalar_t__ WARN_ON (int) ;
 int devm_add_action (struct device*,int (*) (struct drm_device*),struct drm_device*) ;
 int devm_drm_dev_init_release (struct drm_device*) ;
 int drm_dev_init (struct drm_device*,struct drm_driver*,struct device*) ;

int devm_drm_dev_init(struct device *parent,
        struct drm_device *dev,
        struct drm_driver *driver)
{
 int ret;

 if (WARN_ON(!parent || !driver->release))
  return -EINVAL;

 ret = drm_dev_init(dev, driver, parent);
 if (ret)
  return ret;

 ret = devm_add_action(parent, devm_drm_dev_init_release, dev);
 if (ret)
  devm_drm_dev_init_release(dev);

 return ret;
}
