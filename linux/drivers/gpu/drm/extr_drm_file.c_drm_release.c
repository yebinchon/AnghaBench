
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct drm_file* private_data; } ;
struct drm_minor {struct drm_device* dev; } ;
struct drm_file {struct drm_minor* minor; } ;
struct drm_device {int open_count; } ;


 int DRM_DEBUG (char*,int ) ;
 int drm_close_helper (struct file*) ;
 int drm_global_mutex ;
 int drm_lastclose (struct drm_device*) ;
 int drm_minor_release (struct drm_minor*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_release(struct inode *inode, struct file *filp)
{
 struct drm_file *file_priv = filp->private_data;
 struct drm_minor *minor = file_priv->minor;
 struct drm_device *dev = minor->dev;

 mutex_lock(&drm_global_mutex);

 DRM_DEBUG("open_count = %d\n", dev->open_count);

 drm_close_helper(filp);

 if (!--dev->open_count)
  drm_lastclose(dev);

 mutex_unlock(&drm_global_mutex);

 drm_minor_release(minor);

 return 0;
}
