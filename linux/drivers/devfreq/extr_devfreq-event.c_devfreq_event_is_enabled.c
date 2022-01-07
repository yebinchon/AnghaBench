
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfreq_event_dev {scalar_t__ enable_count; int lock; int desc; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

bool devfreq_event_is_enabled(struct devfreq_event_dev *edev)
{
 bool enabled = 0;

 if (!edev || !edev->desc)
  return enabled;

 mutex_lock(&edev->lock);

 if (edev->enable_count > 0)
  enabled = 1;

 mutex_unlock(&edev->lock);

 return enabled;
}
