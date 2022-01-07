
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev_poller {int work; } ;


 int cancel_delayed_work_sync (int *) ;

void input_dev_poller_stop(struct input_dev_poller *poller)
{
 cancel_delayed_work_sync(&poller->work);
}
