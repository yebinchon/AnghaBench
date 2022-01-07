
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {scalar_t__ unique; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int kfree (scalar_t__) ;
 scalar_t__ kstrdup (char const*,int ) ;

int drm_dev_set_unique(struct drm_device *dev, const char *name)
{
 kfree(dev->unique);
 dev->unique = kstrdup(name, GFP_KERNEL);

 return dev->unique ? 0 : -ENOMEM;
}
