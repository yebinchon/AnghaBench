
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cdn_dp_device {int suspended; int lock; scalar_t__ active; } ;


 int cdn_dp_disable (struct cdn_dp_device*) ;
 struct cdn_dp_device* dev_get_drvdata (struct device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int cdn_dp_suspend(struct device *dev)
{
 struct cdn_dp_device *dp = dev_get_drvdata(dev);
 int ret = 0;

 mutex_lock(&dp->lock);
 if (dp->active)
  ret = cdn_dp_disable(dp);
 dp->suspended = 1;
 mutex_unlock(&dp->lock);

 return ret;
}
