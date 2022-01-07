
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct kfd_event_waiter {int wait; TYPE_1__* event; } ;
struct TYPE_2__ {int wq; } ;


 int kfree (struct kfd_event_waiter*) ;
 int remove_wait_queue (int *,int *) ;

__attribute__((used)) static void free_waiters(uint32_t num_events, struct kfd_event_waiter *waiters)
{
 uint32_t i;

 for (i = 0; i < num_events; i++)
  if (waiters[i].event)
   remove_wait_queue(&waiters[i].event->wq,
       &waiters[i].wait);

 kfree(waiters);
}
