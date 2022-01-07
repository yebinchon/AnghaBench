
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int unplugged; } ;


 int drm_dev_unregister (struct drm_device*) ;
 int drm_unplug_srcu ;
 int synchronize_srcu (int *) ;

void drm_dev_unplug(struct drm_device *dev)
{






 dev->unplugged = 1;
 synchronize_srcu(&drm_unplug_srcu);

 drm_dev_unregister(dev);
}
