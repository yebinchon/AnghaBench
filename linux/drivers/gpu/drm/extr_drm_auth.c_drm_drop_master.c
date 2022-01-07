
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int master; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* master_drop ) (struct drm_device*,struct drm_file*) ;} ;


 int drm_master_put (int *) ;
 int stub1 (struct drm_device*,struct drm_file*) ;

__attribute__((used)) static void drm_drop_master(struct drm_device *dev,
       struct drm_file *fpriv)
{
 if (dev->driver->master_drop)
  dev->driver->master_drop(dev, fpriv);
 drm_master_put(&dev->master);
}
