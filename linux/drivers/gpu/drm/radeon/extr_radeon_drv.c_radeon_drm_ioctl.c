
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct drm_device {int dev; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 long drm_ioctl (struct file*,unsigned int,unsigned long) ;
 long pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

long radeon_drm_ioctl(struct file *filp,
        unsigned int cmd, unsigned long arg)
{
 struct drm_file *file_priv = filp->private_data;
 struct drm_device *dev;
 long ret;
 dev = file_priv->minor->dev;
 ret = pm_runtime_get_sync(dev->dev);
 if (ret < 0)
  return ret;

 ret = drm_ioctl(filp, cmd, arg);

 pm_runtime_mark_last_busy(dev->dev);
 pm_runtime_put_autosuspend(dev->dev);
 return ret;
}
