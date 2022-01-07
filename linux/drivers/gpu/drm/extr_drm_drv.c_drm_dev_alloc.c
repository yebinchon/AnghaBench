
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_driver {int dummy; } ;
struct drm_device {int dummy; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct drm_device* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_dev_init (struct drm_device*,struct drm_driver*,struct device*) ;
 int kfree (struct drm_device*) ;
 struct drm_device* kzalloc (int,int ) ;

struct drm_device *drm_dev_alloc(struct drm_driver *driver,
     struct device *parent)
{
 struct drm_device *dev;
 int ret;

 dev = kzalloc(sizeof(*dev), GFP_KERNEL);
 if (!dev)
  return ERR_PTR(-ENOMEM);

 ret = drm_dev_init(dev, driver, parent);
 if (ret) {
  kfree(dev);
  return ERR_PTR(ret);
 }

 return dev;
}
