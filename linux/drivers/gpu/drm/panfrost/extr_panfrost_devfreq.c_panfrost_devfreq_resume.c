
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int devfreq; TYPE_1__* slot; } ;
struct panfrost_device {TYPE_2__ devfreq; } ;
struct TYPE_3__ {int busy; } ;


 int NUM_JOB_SLOTS ;
 int devfreq_resume_device (int ) ;
 int panfrost_devfreq_reset (struct panfrost_device*) ;

void panfrost_devfreq_resume(struct panfrost_device *pfdev)
{
 int i;

 if (!pfdev->devfreq.devfreq)
  return;

 panfrost_devfreq_reset(pfdev);
 for (i = 0; i < NUM_JOB_SLOTS; i++)
  pfdev->devfreq.slot[i].busy = 0;

 devfreq_resume_device(pfdev->devfreq.devfreq);
}
