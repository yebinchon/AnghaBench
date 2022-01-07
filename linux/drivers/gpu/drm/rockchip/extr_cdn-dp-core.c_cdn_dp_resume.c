
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdn_dp_device {int suspended; int lock; int event_work; scalar_t__ fw_loaded; } ;


 struct cdn_dp_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int schedule_work (int *) ;

int cdn_dp_resume(struct device *dev)
{
 struct cdn_dp_device *dp = dev_get_drvdata(dev);

 mutex_lock(&dp->lock);
 dp->suspended = 0;
 if (dp->fw_loaded)
  schedule_work(&dp->event_work);
 mutex_unlock(&dp->lock);

 return 0;
}
