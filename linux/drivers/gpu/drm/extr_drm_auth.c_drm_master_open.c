
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int master; TYPE_1__* minor; } ;
struct drm_device {int master_mutex; int master; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int drm_master_get (int ) ;
 int drm_new_set_master (struct drm_device*,struct drm_file*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_master_open(struct drm_file *file_priv)
{
 struct drm_device *dev = file_priv->minor->dev;
 int ret = 0;



 mutex_lock(&dev->master_mutex);
 if (!dev->master)
  ret = drm_new_set_master(dev, file_priv);
 else
  file_priv->master = drm_master_get(dev->master);
 mutex_unlock(&dev->master_mutex);

 return ret;
}
