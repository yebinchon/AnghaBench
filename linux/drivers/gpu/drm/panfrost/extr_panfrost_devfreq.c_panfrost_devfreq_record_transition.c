
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct panfrost_devfreq_slot* slot; } ;
struct panfrost_device {TYPE_1__ devfreq; } ;
struct panfrost_devfreq_slot {int busy; } ;


 int panfrost_devfreq_update_utilization (struct panfrost_device*,int) ;

void panfrost_devfreq_record_transition(struct panfrost_device *pfdev, int slot)
{
 struct panfrost_devfreq_slot *devfreq_slot = &pfdev->devfreq.slot[slot];

 panfrost_devfreq_update_utilization(pfdev, slot);
 devfreq_slot->busy = !devfreq_slot->busy;
}
