
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct panfrost_devfreq_slot* slot; int devfreq; } ;
struct panfrost_device {TYPE_1__ devfreq; } ;
struct panfrost_devfreq_slot {int time_last_update; int idle_time; int busy_time; scalar_t__ busy; } ;
typedef int ktime_t ;


 int ktime_get () ;
 scalar_t__ ktime_sub (int ,int ) ;

__attribute__((used)) static void panfrost_devfreq_update_utilization(struct panfrost_device *pfdev, int slot)
{
 struct panfrost_devfreq_slot *devfreq_slot = &pfdev->devfreq.slot[slot];
 ktime_t now;
 ktime_t last;

 if (!pfdev->devfreq.devfreq)
  return;

 now = ktime_get();
 last = pfdev->devfreq.slot[slot].time_last_update;


 if (devfreq_slot->busy)
  pfdev->devfreq.slot[slot].busy_time += ktime_sub(now, last);
 else
  pfdev->devfreq.slot[slot].idle_time += ktime_sub(now, last);

 pfdev->devfreq.slot[slot].time_last_update = now;
}
