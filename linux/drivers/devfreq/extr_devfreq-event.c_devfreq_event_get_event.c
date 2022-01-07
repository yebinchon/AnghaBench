
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct devfreq_event_dev {int lock; TYPE_2__* desc; } ;
struct devfreq_event_data {scalar_t__ load_count; scalar_t__ total_count; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* get_event ) (struct devfreq_event_dev*,struct devfreq_event_data*) ;} ;


 int EINVAL ;
 int devfreq_event_is_enabled (struct devfreq_event_dev*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct devfreq_event_dev*,struct devfreq_event_data*) ;

int devfreq_event_get_event(struct devfreq_event_dev *edev,
       struct devfreq_event_data *edata)
{
 int ret;

 if (!edev || !edev->desc)
  return -EINVAL;

 if (!edev->desc->ops || !edev->desc->ops->get_event)
  return -EINVAL;

 if (!devfreq_event_is_enabled(edev))
  return -EINVAL;

 edata->total_count = edata->load_count = 0;

 mutex_lock(&edev->lock);
 ret = edev->desc->ops->get_event(edev, edata);
 if (ret < 0)
  edata->total_count = edata->load_count = 0;
 mutex_unlock(&edev->lock);

 return ret;
}
