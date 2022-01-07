
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct devfreq_event_dev {int lock; TYPE_2__* desc; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_event ) (struct devfreq_event_dev*) ;} ;


 int EINVAL ;
 int EPERM ;
 int devfreq_event_is_enabled (struct devfreq_event_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct devfreq_event_dev*) ;

int devfreq_event_set_event(struct devfreq_event_dev *edev)
{
 int ret;

 if (!edev || !edev->desc)
  return -EINVAL;

 if (!edev->desc->ops || !edev->desc->ops->set_event)
  return -EINVAL;

 if (!devfreq_event_is_enabled(edev))
  return -EPERM;

 mutex_lock(&edev->lock);
 ret = edev->desc->ops->set_event(edev);
 mutex_unlock(&edev->lock);

 return ret;
}
