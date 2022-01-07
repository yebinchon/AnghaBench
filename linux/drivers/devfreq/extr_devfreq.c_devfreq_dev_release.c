
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {int parent; } ;
struct devfreq {int lock; TYPE_2__ dev; TYPE_1__* profile; int node; } ;
struct TYPE_3__ {int (* exit ) (int ) ;} ;


 scalar_t__ IS_ERR (int ) ;
 int dev_warn (TYPE_2__*,char*) ;
 int devfreq_list_lock ;
 int find_device_devfreq (int ) ;
 int kfree (struct devfreq*) ;
 int list_del (int *) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (int ) ;
 struct devfreq* to_devfreq (struct device*) ;

__attribute__((used)) static void devfreq_dev_release(struct device *dev)
{
 struct devfreq *devfreq = to_devfreq(dev);

 mutex_lock(&devfreq_list_lock);
 if (IS_ERR(find_device_devfreq(devfreq->dev.parent))) {
  mutex_unlock(&devfreq_list_lock);
  dev_warn(&devfreq->dev, "releasing devfreq which doesn't exist\n");
  return;
 }
 list_del(&devfreq->node);
 mutex_unlock(&devfreq_list_lock);

 if (devfreq->profile->exit)
  devfreq->profile->exit(devfreq->dev.parent);

 mutex_destroy(&devfreq->lock);
 kfree(devfreq);
}
