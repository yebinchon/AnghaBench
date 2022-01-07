
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_perfcnt {int lock; } ;
struct panfrost_file_priv {int dummy; } ;
struct panfrost_device {struct panfrost_perfcnt* perfcnt; } ;
struct drm_panfrost_perfcnt_enable {int counterset; scalar_t__ enable; } ;
struct drm_file {struct panfrost_file_priv* driver_priv; } ;
struct drm_device {struct panfrost_device* dev_private; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ panfrost_model_is_bifrost (struct panfrost_device*) ;
 int panfrost_perfcnt_disable_locked (struct panfrost_device*,struct panfrost_file_priv*) ;
 int panfrost_perfcnt_enable_locked (struct panfrost_device*,struct panfrost_file_priv*,int) ;
 int panfrost_unstable_ioctl_check () ;

int panfrost_ioctl_perfcnt_enable(struct drm_device *dev, void *data,
      struct drm_file *file_priv)
{
 struct panfrost_file_priv *pfile = file_priv->driver_priv;
 struct panfrost_device *pfdev = dev->dev_private;
 struct panfrost_perfcnt *perfcnt = pfdev->perfcnt;
 struct drm_panfrost_perfcnt_enable *req = data;
 int ret;

 ret = panfrost_unstable_ioctl_check();
 if (ret)
  return ret;


 if (req->counterset > (panfrost_model_is_bifrost(pfdev) ? 1 : 0))
  return -EINVAL;

 mutex_lock(&perfcnt->lock);
 if (req->enable)
  ret = panfrost_perfcnt_enable_locked(pfdev, pfile,
           req->counterset);
 else
  ret = panfrost_perfcnt_disable_locked(pfdev, pfile);
 mutex_unlock(&perfcnt->lock);

 return ret;
}
