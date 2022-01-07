
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct host1x_waitlist {int * data; } ;


 int wake_up (int *) ;

__attribute__((used)) static void action_wakeup(struct host1x_waitlist *waiter)
{
 wait_queue_head_t *wq = waiter->data;

 wake_up(wq);
}
