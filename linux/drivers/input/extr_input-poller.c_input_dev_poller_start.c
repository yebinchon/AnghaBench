
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev_poller {scalar_t__ poll_interval; int input; int (* poll ) (int ) ;} ;


 int input_dev_poller_queue_work (struct input_dev_poller*) ;
 int stub1 (int ) ;

void input_dev_poller_start(struct input_dev_poller *poller)
{

 if (poller->poll_interval > 0) {
  poller->poll(poller->input);
  input_dev_poller_queue_work(poller);
 }
}
