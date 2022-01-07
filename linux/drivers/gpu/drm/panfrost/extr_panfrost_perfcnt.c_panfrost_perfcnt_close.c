
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct panfrost_perfcnt {int lock; struct panfrost_file_priv* user; } ;
struct panfrost_file_priv {struct panfrost_device* pfdev; } ;
struct panfrost_device {int dev; struct panfrost_perfcnt* perfcnt; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int panfrost_perfcnt_disable_locked (struct panfrost_device*,struct panfrost_file_priv*) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_mark_last_busy (int ) ;
 int pm_runtime_put_autosuspend (int ) ;

void panfrost_perfcnt_close(struct panfrost_file_priv *pfile)
{
 struct panfrost_device *pfdev = pfile->pfdev;
 struct panfrost_perfcnt *perfcnt = pfdev->perfcnt;

 pm_runtime_get_sync(pfdev->dev);
 mutex_lock(&perfcnt->lock);
 if (perfcnt->user == pfile)
  panfrost_perfcnt_disable_locked(pfdev, pfile);
 mutex_unlock(&perfcnt->lock);
 pm_runtime_mark_last_busy(pfdev->dev);
 pm_runtime_put_autosuspend(pfdev->dev);
}
