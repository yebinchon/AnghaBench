
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev_poller {int work; int poll_interval; } ;


 unsigned long HZ ;
 unsigned long msecs_to_jiffies (int ) ;
 int queue_delayed_work (int ,int *,unsigned long) ;
 unsigned long round_jiffies_relative (unsigned long) ;
 int system_freezable_wq ;

__attribute__((used)) static void input_dev_poller_queue_work(struct input_dev_poller *poller)
{
 unsigned long delay;

 delay = msecs_to_jiffies(poller->poll_interval);
 if (delay >= HZ)
  delay = round_jiffies_relative(delay);

 queue_delayed_work(system_freezable_wq, &poller->work, delay);
}
