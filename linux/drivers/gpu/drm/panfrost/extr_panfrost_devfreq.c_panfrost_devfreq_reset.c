
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* slot; } ;
struct panfrost_device {TYPE_2__ devfreq; } ;
typedef int ktime_t ;
struct TYPE_3__ {int time_last_update; scalar_t__ idle_time; scalar_t__ busy_time; } ;


 int NUM_JOB_SLOTS ;
 int ktime_get () ;

__attribute__((used)) static void panfrost_devfreq_reset(struct panfrost_device *pfdev)
{
 ktime_t now = ktime_get();
 int i;

 for (i = 0; i < NUM_JOB_SLOTS; i++) {
  pfdev->devfreq.slot[i].busy_time = 0;
  pfdev->devfreq.slot[i].idle_time = 0;
  pfdev->devfreq.slot[i].time_last_update = now;
 }
}
