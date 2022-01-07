
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfreq {int dev; TYPE_1__* governor; } ;
struct TYPE_2__ {int (* event_handler ) (struct devfreq*,int ,int *) ;} ;


 int DEVFREQ_GOV_STOP ;
 int EINVAL ;
 int device_unregister (int *) ;
 int stub1 (struct devfreq*,int ,int *) ;

int devfreq_remove_device(struct devfreq *devfreq)
{
 if (!devfreq)
  return -EINVAL;

 if (devfreq->governor)
  devfreq->governor->event_handler(devfreq,
       DEVFREQ_GOV_STOP, ((void*)0));
 device_unregister(&devfreq->dev);

 return 0;
}
