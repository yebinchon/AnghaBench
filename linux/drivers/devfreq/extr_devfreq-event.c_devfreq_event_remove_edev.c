
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq_event_dev {int dev; int node; int enable_count; } ;


 int EINVAL ;
 int WARN_ON (int ) ;
 int devfreq_event_list_lock ;
 int device_unregister (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int devfreq_event_remove_edev(struct devfreq_event_dev *edev)
{
 if (!edev)
  return -EINVAL;

 WARN_ON(edev->enable_count);

 mutex_lock(&devfreq_event_list_lock);
 list_del(&edev->node);
 mutex_unlock(&devfreq_event_list_lock);

 device_unregister(&edev->dev);

 return 0;
}
