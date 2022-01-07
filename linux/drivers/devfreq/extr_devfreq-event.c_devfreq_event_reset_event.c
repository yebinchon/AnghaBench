
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct devfreq_event_dev {int lock; TYPE_1__* desc; } ;
struct TYPE_4__ {int (* reset ) (struct devfreq_event_dev*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int EINVAL ;
 int EPERM ;
 int devfreq_event_is_enabled (struct devfreq_event_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct devfreq_event_dev*) ;

int devfreq_event_reset_event(struct devfreq_event_dev *edev)
{
 int ret = 0;

 if (!edev || !edev->desc)
  return -EINVAL;

 if (!devfreq_event_is_enabled(edev))
  return -EPERM;

 mutex_lock(&edev->lock);
 if (edev->desc->ops && edev->desc->ops->reset)
  ret = edev->desc->ops->reset(edev);
 mutex_unlock(&edev->lock);

 return ret;
}
