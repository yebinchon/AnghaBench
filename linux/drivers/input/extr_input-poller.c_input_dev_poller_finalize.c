
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev_poller {int poll_interval; int poll_interval_max; } ;



void input_dev_poller_finalize(struct input_dev_poller *poller)
{
 if (!poller->poll_interval)
  poller->poll_interval = 500;
 if (!poller->poll_interval_max)
  poller->poll_interval_max = poller->poll_interval;
}
