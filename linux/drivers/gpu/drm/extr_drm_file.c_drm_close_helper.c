
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct drm_file* private_data; } ;
struct drm_file {int lhead; TYPE_1__* minor; } ;
struct drm_device {int filelist_mutex; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int drm_file_free (struct drm_file*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void drm_close_helper(struct file *filp)
{
 struct drm_file *file_priv = filp->private_data;
 struct drm_device *dev = file_priv->minor->dev;

 mutex_lock(&dev->filelist_mutex);
 list_del(&file_priv->lhead);
 mutex_unlock(&dev->filelist_mutex);

 drm_file_free(file_priv);
}
