
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {TYPE_1__* poller; } ;
struct TYPE_2__ {unsigned int poll_interval_max; } ;


 scalar_t__ input_dev_ensure_poller (struct input_dev*) ;

void input_set_max_poll_interval(struct input_dev *dev, unsigned int interval)
{
 if (input_dev_ensure_poller(dev))
  dev->poller->poll_interval_max = interval;
}
