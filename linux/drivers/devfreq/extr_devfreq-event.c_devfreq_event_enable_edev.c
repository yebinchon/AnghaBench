
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct devfreq_event_dev {scalar_t__ enable_count; int lock; TYPE_1__* desc; } ;
struct TYPE_4__ {int (* enable ) (struct devfreq_event_dev*) ;} ;
struct TYPE_3__ {TYPE_2__* ops; } ;


 int EINVAL ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct devfreq_event_dev*) ;

int devfreq_event_enable_edev(struct devfreq_event_dev *edev)
{
 int ret = 0;

 if (!edev || !edev->desc)
  return -EINVAL;

 mutex_lock(&edev->lock);
 if (edev->desc->ops && edev->desc->ops->enable
   && edev->enable_count == 0) {
  ret = edev->desc->ops->enable(edev);
  if (ret < 0)
   goto err;
 }
 edev->enable_count++;
err:
 mutex_unlock(&edev->lock);

 return ret;
}
