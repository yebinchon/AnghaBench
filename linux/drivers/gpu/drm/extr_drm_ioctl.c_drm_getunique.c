
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_unique {scalar_t__ unique_len; int unique; } ;
struct drm_master {scalar_t__ unique_len; TYPE_1__* dev; int unique; } ;
struct drm_file {struct drm_master* master; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int master_mutex; } ;


 int EFAULT ;
 scalar_t__ copy_to_user (int ,int ,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_getunique(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 struct drm_unique *u = data;
 struct drm_master *master = file_priv->master;

 mutex_lock(&master->dev->master_mutex);
 if (u->unique_len >= master->unique_len) {
  if (copy_to_user(u->unique, master->unique, master->unique_len)) {
   mutex_unlock(&master->dev->master_mutex);
   return -EFAULT;
  }
 }
 u->unique_len = master->unique_len;
 mutex_unlock(&master->dev->master_mutex);

 return 0;
}
