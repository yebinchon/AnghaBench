
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int devfreq; } ;
struct panfrost_device {TYPE_1__ devfreq; } ;


 int devfreq_suspend_device (int ) ;

void panfrost_devfreq_suspend(struct panfrost_device *pfdev)
{
 if (!pfdev->devfreq.devfreq)
  return;

 devfreq_suspend_device(pfdev->devfreq.devfreq);
}
